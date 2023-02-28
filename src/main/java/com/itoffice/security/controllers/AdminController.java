package com.itoffice.security.controllers;

import com.itoffice.security.auth.AuthenticationService;
import com.itoffice.security.auth.RegisterRequest;
import com.itoffice.security.user.User;
import com.itoffice.security.user.UserRepository;
import com.itoffice.security.user.UserService;
import com.itoffice.security.util.ExcelGenerator;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api/admin")
@RequiredArgsConstructor
public class AdminController {
    private final AuthenticationService service;
    private final UserService userService;
    private final UserRepository userRepository;

    @PostMapping("/register")
    public ResponseEntity<?> register(
            @RequestBody @Validated RegisterRequest request
    ) {
        return ResponseEntity.ok(service.register(request));
    }

    @GetMapping("/get/all")
    public Page<User> getAll(@RequestParam(defaultValue = "0") int page,
                             @RequestParam(defaultValue = "10") int size
    ) {
        return userService.getAll(PageRequest.of(page, size));
    }

    @PutMapping("/change-pass")
    public HttpEntity<?> changePass(@RequestParam String oldPass,
                                    @RequestParam String newPass
    ) {
        return userService.changePass(oldPass, newPass);
    }

    @PutMapping("/change-info")
    public HttpEntity<?> changePass(@RequestParam String pass,
                                    @RequestParam String newLogin,
                                    @RequestParam String newName
    ) {
        return userService.changeInfo(pass, newLogin, newName);
    }

    @DeleteMapping("/delete")
    public HttpEntity<?> deleteAdmin(@RequestParam @NonNull Integer id) {
        return userService.deleteUser(id);
    }

    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=Admin " + currentDateTime + ".xlsx";
        response.setHeader(headerKey, headerValue);

        List<User> users = userRepository.findAll();
        ExcelGenerator generator = new ExcelGenerator(users, null);
        generator.generateExcelFile(response);
    }
}
