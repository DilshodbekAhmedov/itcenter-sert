package com.itoffice.security.user;

import com.itoffice.security.certificate.Certificate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;

import java.util.List;

public interface UserService {
    Page<User> getAll(Pageable pageable);

    HttpEntity<?> changePass(String oldPass, String newPass);

    HttpEntity<?> changeInfo(String pass, String newLogin, String newName);

    List<Certificate> searchAdmin(String searchWord);


    HttpEntity<?> deleteUser(Integer id);
}
