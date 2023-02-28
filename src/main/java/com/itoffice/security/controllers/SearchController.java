package com.itoffice.security.controllers;

import com.itoffice.security.certificate.Certificate;
import com.itoffice.security.certificate.CertificateService;
import com.itoffice.security.user.UserService;
import com.itoffice.security.util.Utils;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/search")
@RequiredArgsConstructor
public class SearchController {
    private final CertificateService certificateService;
    private final UserService userService;

    @GetMapping("/by-student")
    public Page<Certificate> searchCertificate(@RequestParam String searchWord,
                                               @RequestParam(defaultValue = "0") int page,
                                               @RequestParam(defaultValue = "10") int size
    ) {
        return Utils.getPageFromList(certificateService.searchCertificate(searchWord), page, size);
    }

    @GetMapping("/by-admin")
    public Page<Certificate> searchAdmin(@RequestParam String searchWord,
                                         @RequestParam(defaultValue = "0") int page,
                                         @RequestParam(defaultValue = "10") int size
    ) {
        return Utils.getPageFromList(userService.searchAdmin(searchWord), page, size);
    }

    @GetMapping("/by-place")
    public Page<Certificate> searchCertificate(@RequestParam(defaultValue = "0") int page,
                                               @RequestParam(defaultValue = "10") int size,
                                               @RequestParam int place
    ) {
        return Utils.getPageFromList(certificateService.getByPlace(place), page, size);
    }

}
