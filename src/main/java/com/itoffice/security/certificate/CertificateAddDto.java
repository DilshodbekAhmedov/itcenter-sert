package com.itoffice.security.certificate;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CertificateAddDto {
    @NotBlank
    private String StudentName;
    @NotNull
    private boolean isStudentMan;
    private String info;
    @NotNull
    private LocalDate date;
    @NotNull
    private Long categoryId;
    private int place;
}
