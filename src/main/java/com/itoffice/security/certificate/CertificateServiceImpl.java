package com.itoffice.security.certificate;

import com.itoffice.security.category.CertificateCategory;
import com.itoffice.security.category.CertificateCategoryRepository;
import com.itoffice.security.util.InfoDto;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CertificateServiceImpl implements CertificateService {
    private final CertificateRepository certificateDao;
    private final CertificateCategoryRepository certificateCategoryDao;


    /**
     * return types
     * 0: impossible to find Category
     * -1: Certificate already exists
     */
    @Override
    public long save(CertificateAddDto certificateAddDto) {
        if (existCertificate(certificateAddDto)) {
            return -1;
        }
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
        return certificateDao.findAll(pageable);
    }

    private boolean existCertificate(CertificateAddDto certificateAddDto) {
        return certificateDao.existsCertificateByCategory_IdAndStudentNameAndStudentSurnameAndStudentMiddleName(
                certificateAddDto.getCategoryId(),
                certificateAddDto.getStudentName().trim(),
                certificateAddDto.getStudentSurname().trim(),
                certificateAddDto.getStudentMiddleName().trim()
        );
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
        infoDto.setMen(certificateDao.getCountByStudentMan(false));
        infoDto.setAll(infoDto.getMen() + infoDto.getWomen());
        return infoDto;
    }

    @Override
    public List<Certificate> getByPlace(int place) {
        return certificateDao.findAllByPlace(place);
    }


    private String validateForSearch(String searchWord) {
        return "%" + searchWord.toLowerCase() + "%";
    }
}
