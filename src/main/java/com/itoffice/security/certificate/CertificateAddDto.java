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
    @NotBlank
    private String StudentSurname;
    @NotBlank
    private String StudentMiddleName;
    @NotNull
    private boolean isStudentMan;
    @NotBlank
    private String info;
    @NotNull
    private LocalDate date;
    @NotNull
    private Long categoryId;
}
