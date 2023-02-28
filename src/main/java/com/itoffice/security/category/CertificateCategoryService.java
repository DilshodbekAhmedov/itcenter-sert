package com.itoffice.security.category;

import org.springframework.http.HttpEntity;

import java.util.List;

public interface CertificateCategoryService {
    long save(CategoryAddDto categoryAddDto);

    CertificateCategory getById(Long id);

    List<CertificateCategory> getAll();

    HttpEntity<?> delete(Long id);
}
