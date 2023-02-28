package com.itoffice.security.category;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.itoffice.security.certificate.Certificate;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class CertificateCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String name;
    @JsonIgnore
    @OneToMany(mappedBy = "category")
    private List<Certificate> certificates;

    public CertificateCategory(CategoryAddDto categoryAddDto) {
        this.name = categoryAddDto.getName();
    }
}
