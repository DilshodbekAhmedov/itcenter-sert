package com.itoffice.security.controllers;

import com.itoffice.security.category.CategoryAddDto;
import com.itoffice.security.category.CertificateCategory;
import com.itoffice.security.category.CertificateCategoryService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/api/category")
@RequiredArgsConstructor
public class CertificateCategoryController {
    private final CertificateCategoryService certificateCategoryService;

    @DeleteMapping("/delete")
    public HttpEntity<?> delete(@RequestParam @NonNull Long id) {
        return certificateCategoryService.delete(id);
    }


    @PostMapping("/add")
    public HttpEntity<?> addCategory(@RequestBody CategoryAddDto categoryAddDto) {
        long savedId = certificateCategoryService.save(categoryAddDto);
        if (savedId == -1) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("false");
        }
        return ResponseEntity.status(HttpStatus.OK).body("true");
    }

    @GetMapping("/get/{id}")
    public HttpEntity<?> getById(@PathVariable("id") Long categoryId) {
        CertificateCategory category = certificateCategoryService.getById(categoryId);
        if (Objects.isNull(category)) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Category Not found");
        }
        return ResponseEntity.ok(category);
    }

    @GetMapping("/get/all")
    public List<CertificateCategory> getAll() {
        return certificateCategoryService.getAll();
    }
}