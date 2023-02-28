package com.itoffice.security.certificate;

import jakarta.validation.constraints.NotBlank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CertificateRepository extends JpaRepository<Certificate, Long> {
    boolean existsCertificateByCategory_IdAndStudentNameAndStudentSurnameAndStudentMiddleName(
            Long category_id, @NotBlank String studentName,
            @NotBlank String studentSurname,
            @NotBlank String studentMiddleName
    );

    @Query("select cer from certificates  cer" +
            " where lower(cer.studentName) like :searchWord" +
            " or lower(cer.studentSurname) like :searchWord" +
            " or lower(cer.category.name) like :searchWord" +
            " or lower(cer.studentMiddleName) like :searchWord")
    List<Certificate> searchCertificate(String searchWord);

    @Query("select count(cer) from certificates cer" +
            " where cer.isStudentMan = :isman")
    Integer getCountByStudentMan(boolean isman);
}
