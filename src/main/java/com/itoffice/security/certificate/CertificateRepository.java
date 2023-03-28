package com.itoffice.security.certificate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CertificateRepository extends JpaRepository<Certificate, Long> {


    @Query("select cer from certificates  cer" +
            " where lower(cer.studentName) like :searchWord" +
            " or lower(cer.category.name) like :searchWord")
    List<Certificate> searchCertificate(String searchWord);

    @Query("select count(cer) from certificates cer" +
            " where cer.isStudentMan = :isman")
    Integer getCountByStudentMan(boolean isman);

    @Query("select cer from certificates  cer" +
            " where cer.place = :place" +
            " order by cer.date desc ")
    List<Certificate> findAllByPlace(int place);

    @Query("select cer from certificates  cer" +
            " order by cer.date desc ")
    List<Certificate> findAll();
}
