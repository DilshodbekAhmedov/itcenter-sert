package com.itoffice.security.certificate;

import com.itoffice.security.category.CertificateCategory;
import com.itoffice.security.category.CertificateCategoryRepository;
import com.itoffice.security.util.InfoDto;
import com.itoffice.security.util.Utils;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class CertificateServiceImpl implements CertificateService {
    private static final Logger LOGGER = LogManager.getLogger(CertificateServiceImpl.class);
    private final CertificateRepository certificateDao;
    private final CertificateCategoryRepository certificateCategoryDao;
    private final Object syncObject = new Object();

    /**
     * return types
     * 0: impossible to find Category
     * -1: Certificate already exists
     */
    @Override
    public long save(CertificateAddDto certificateAddDto) {
        Optional<CertificateCategory> category = certificateCategoryDao.findById(certificateAddDto.getCategoryId());
        if (category.isEmpty()) {
            return 0;
        }
        Certificate certificate = new Certificate(certificateAddDto);
        certificate.setCategory(category.get());
        Certificate saved = certificateDao.save(certificate);
        return saved.getId();
    }

    @Override
    public Certificate getById(Long id) {
        Optional<Certificate> certificateOptional = certificateDao.findById(id);
        return certificateOptional.orElse(null);
    }

    @Override
    public Page<Certificate> getAll(Pageable pageable) {
        return Utils.getPageFromList(certificateDao.findAll(), pageable.getPageNumber(), pageable.getPageSize());
    }


    @Override
    public List<Certificate> searchCertificate(String searchWord) {
        return certificateDao.searchCertificate(validateForSearch(searchWord));
    }

    @Override
    public HttpEntity<?> delete(Long id) {
        Optional<Certificate> certificate = certificateDao.findById(id);
        if (certificate.isEmpty()) {
            return ResponseEntity.badRequest().body("Certificate not found");
        }
        certificateDao.deleteById(id);
        return ResponseEntity.ok("Certificate deleted");
    }

    @Override
    public InfoDto getInfo() {
        InfoDto infoDto = new InfoDto();
        infoDto.setMen(certificateDao.getCountByStudentMan(true));
        infoDto.setWomen(certificateDao.getCountByStudentMan(false));
        infoDto.setAll(infoDto.getMen() + infoDto.getWomen());
        return infoDto;
    }

    @Override
    public List<Certificate> getByPlace(int place) {
        return certificateDao.findAllByPlace(place);
    }

    @Override
    public synchronized ResponseEntity uploadCertificates(MultipartFile file) {
        List<Certificate> certificates = new ArrayList<>();
        List<CertificateCategory> categories = certificateCategoryDao.findAll();
        String serverFilePath = null;
        try {
            //Storing file
            final Path fileStorageLocation = Paths.get("./uploads/files").toAbsolutePath().normalize();
            Files.createDirectories(fileStorageLocation);
            String fileName = UUID.randomUUID() + "-file." + getFileExtension(file.getOriginalFilename());
            if (fileName.contains("..")) {
                LOGGER.error("Sorry! Filename contains invalid path sequence ");
                throw new RuntimeException(
                        "Sorry! Filename contains invalid path sequence " + fileName);
            }
            Path targetLocation = fileStorageLocation.resolve(fileName);
            Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
//             read file
            File serverFile = fileStorageLocation.resolve(fileName).toFile();
            Workbook workbook = WorkbookFactory.create(serverFile);
            serverFilePath = serverFile.getPath();
            Sheet sheet = workbook.getSheetAt(0);
            for (Row row : sheet) {
                if (!sheet.getRow(0).equals(row)) {
                    if (row.getCell(2).getDateCellValue() == null) {
                        continue;
                    }
                    Certificate certificate = new Certificate();
                    certificate.setStudentName(row.getCell(0).getStringCellValue());
                    certificate.setStudentMan(row.getCell(1).getBooleanCellValue());
                    certificate.setDate(LocalDate.ofInstant(row.getCell(2).getDateCellValue().toInstant(), ZoneId.of("Asia/Tashkent")));
                    certificate.setCategory(
                            categories.stream()
                                    .filter(category -> category.getId().equals((long) row.getCell(3).getNumericCellValue()))
                                    .findFirst().orElseThrow()
                    );
                    certificate.setPlace((int) row.getCell(4).getNumericCellValue());
                    certificate.setInfo("INFO");
                    certificates.add(certificate);
                }
            }
            try {
                certificateDao.saveAll(certificates);
            } catch (Exception e) {
                LOGGER.error("Error during save: " + e.getMessage());
                return ResponseEntity.badRequest().body("Saqlash jarayonida xatolik: " + e.getMessage());
            }
        } catch (Exception e) {
            LOGGER.error("Error during read file: " + e.getMessage());
            return ResponseEntity.badRequest().body("Faylda xatolik: " + e.getMessage());
        } finally {
            if (serverFilePath != null) {
                File serverFile = new File(serverFilePath);
                synchronized (syncObject) {
                    serverFile.delete();
                    LOGGER.info("file deleted");
                }
            }
        }
        LOGGER.info("Certificate uploading via Excel file finished successfully");
        return ResponseEntity.ok().body("Muvaffaqiyatli saqlandi");
    }

    private String getFileExtension(String fileName) {
        if (fileName == null) {
            return null;
        }
        String[] fileNameParts = fileName.split("\\.");

        return fileNameParts[fileNameParts.length - 1];
    }


    private String validateForSearch(String searchWord) {
        return "%" + searchWord.toLowerCase() + "%";
    }
}
