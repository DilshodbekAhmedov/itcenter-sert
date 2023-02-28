package com.itoffice.security.category;


import jakarta.validation.constraints.NotBlank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CertificateCategoryRepository extends JpaRepository<CertificateCategory, Long> {
    boolean existsCertificateCategoryByName(@NotBlank String name);
}