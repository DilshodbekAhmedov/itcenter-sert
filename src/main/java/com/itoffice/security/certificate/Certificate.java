package com.itoffice.security.certificate;

import com.itoffice.security.category.CertificateCategory;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.time.LocalDate;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder(toBuilder = true)
@Entity(name = "certificates")
public class Certificate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String studentName;
    @NotNull
    private boolean isStudentMan;
    private String info;
    @NotNull
    private LocalDate date;
    private int place;
    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private CertificateCategory category;

    public Certificate(CertificateAddDto certificateAddDto) {
        this.date = certificateAddDto.getDate();
        this.info = certificateAddDto.getInfo();
        this.isStudentMan = certificateAddDto.isStudentMan();
        this.studentName = certificateAddDto.getStudentName();
        this.place = certificateAddDto.getPlace();
    }
}
