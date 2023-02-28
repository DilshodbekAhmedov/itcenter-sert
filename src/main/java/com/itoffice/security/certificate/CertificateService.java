package com.itoffice.security.certificate;

import com.itoffice.security.util.InfoDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;

import java.util.List;

public interface CertificateService {
    long save(CertificateAddDto certificateAddDto);

    Certificate getById(Long id);

    Page<Certificate> getAll(Pageable pageable);

    List<Certificate> searchCertificate(String searchWord);

    HttpEntity<?> delete(Long id);

    InfoDto getInfo();
}