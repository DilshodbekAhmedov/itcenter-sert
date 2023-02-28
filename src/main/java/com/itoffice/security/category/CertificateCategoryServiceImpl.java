package com.itoffice.security.category;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CertificateCategoryServiceImpl implements CertificateCategoryService {

    private final CertificateCategoryRepository certificateCategoryDao;

    @Override
    public long save(CategoryAddDto categoryAddDto) {
        if (existsCategory(categoryAddDto)) {
            return -1;
        }
        CertificateCategory certificateCategory = new CertificateCategory(categoryAddDto);
        CertificateCategory savedCategory = certificateCategoryDao.save(certificateCategory);
        return savedCategory.getId();
    }

    @Override
    public CertificateCategory getById(Long id) {
        Optional<CertificateCategory> categoryOptional = certificateCategoryDao.findById(id);
        return categoryOptional.orElse(null);
    }

    @Override
    public List<CertificateCategory> getAll() {
        return certificateCategoryDao.findAll().stream().sorted(Comparator.comparing(CertificateCategory::getName)).collect(Collectors.toList());
    }

    @Override
    public HttpEntity<?> delete(Long id) {
        Optional<CertificateCategory> category = certificateCategoryDao.findById(id);
        if (category.isEmpty()) {
            return ResponseEntity.badRequest().body("false");
        }
        if (category.get().getCertificates().size() != 0) {
            return ResponseEntity.badRequest().body("false");
        }
        certificateCategoryDao.delete(category.get());
        return ResponseEntity.ok().body("true");
    }

    private boolean existsCategory(CategoryAddDto categoryAddDto) {
        return certificateCategoryDao.existsCertificateCategoryByName(categoryAddDto.getName().trim());
    }
}
