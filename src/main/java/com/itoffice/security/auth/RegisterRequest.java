package com.itoffice.security.auth;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegisterRequest {
    @NotBlank(message = "Name is blank")
    private String name;
    @NotBlank(message = "login is blank")
    private String login;
    @NotBlank(message = "password is blank")
    private String password;
}
