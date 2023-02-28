package com.itoffice.security.controllers;

import com.itoffice.security.certificate.Certificate;
import com.itoffice.security.certificate.CertificateAddDto;
import com.itoffice.security.certificate.CertificateRepository;
import com.itoffice.security.certificate.CertificateService;
import com.itoffice.security.util.ExcelGenerator;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/api/certificate")
@RequiredArgsConstructor
public class CertificateController {
    private final CertificateService certificateService;
    private final CertificateRepository certificateRepository;
    @GetMapping("/get-info")
    public HttpEntity<?> getInfo(){
        return ResponseEntity.ok(certificateService.getInfo());
    }

    @GetMapping("/get/all")
    public Page<Certificate> getAll(@RequestParam(defaultValue = "0") int page,
                                    @RequestParam(defaultValue = "10") int size
    ) {
        return certificateService.getAll(PageRequest.of(page, size));
    }

    @GetMapping("/get/{cer_id}")
    public HttpEntity<?> getById(@PathVariable("cer_id") Long certificateId) {
        Certificate certificate = certificateService.getById(certificateId);
        if (Objects.isNull(certificate)) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Certificate not found");
        }
        return ResponseEntity.ok(certificate);
    }

    @PostMapping("/save")
    public HttpEntity<?> save(@RequestBody CertificateAddDto certificateAddDto) {
        long savedId = certificateService.save(certificateAddDto);
        if (savedId <= 0) {
           return ResponseEntity.status(HttpStatus.CONFLICT).body("false");
        }
        return ResponseEntity.status(HttpStatus.OK).body("true");
    }

    @DeleteMapping("/delete")
    public HttpEntity<?> deleteCertificate(@RequestParam @NonNull Long id) {
        return certificateService.delete(id);
    }

    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=Certificate" + currentDateTime + ".xlsx";
        response.setHeader(headerKey, headerValue);

        List<Certificate> certificates = certificateRepository.findAll();
        ExcelGenerator generator = new ExcelGenerator(null, certificates);
        generator.generateExcelFile(response);
    }
}
