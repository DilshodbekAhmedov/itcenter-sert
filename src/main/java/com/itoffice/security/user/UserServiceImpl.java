package com.itoffice.security.user;

import com.itoffice.security.certificate.Certificate;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    public Page<User> getAll(Pageable pageable) {
        return userRepository.findAll(pageable);
    }

    @Override
    public synchronized HttpEntity<?> changePass(String oldPass, String newPass) {
        UserDetails authentication = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (passwordEncoder.matches(oldPass, authentication.getPassword())) {
            Optional<User> byLogin = userRepository.findByLogin(authentication.getUsername());
            if (byLogin.isPresent()) {
                byLogin.get().setPassword(passwordEncoder.encode(newPass.trim()));
                userRepository.save(byLogin.get());
                return ResponseEntity.ok("Edited successfully");
            } else {
                return ResponseEntity.badRequest().body("Couldn't find the user");
            }
        } else {
            return ResponseEntity.badRequest().body("Old password doesn't match ");
        }

    }

    @Override
    public HttpEntity<?> changeInfo(String pass, String newLogin, String newName) {
        UserDetails authentication = (UserDetails) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal();
        if (passwordEncoder.matches(pass, authentication.getPassword())) {
            if (userRepository.existsByLogin(newLogin.trim())) {
                return ResponseEntity.badRequest().body("Login Already exists. Use another");
            } else {
                Optional<User> user = userRepository.findByLogin(authentication.getUsername());
                if (user.isPresent()) {
                    user.get().setLogin(newLogin.trim());
                    user.get().setName(newName.trim());
                    userRepository.save(user.get());
                    return ResponseEntity.ok("Edited successfully");
                } else {
                    return ResponseEntity.badRequest().body("Couldn't find the user");
                }
            }
        } else {
            return ResponseEntity.badRequest().body("Old password doesn't match ");
        }
    }

    @Override
    public List<Certificate> searchAdmin(String searchWord) {
        return userRepository.searchAdmin("%"+searchWord+"%");
    }

    @Override
    public HttpEntity<?> deleteUser(Integer id) {
        Optional<User> user = userRepository.findById(id);
        if(user.isEmpty()){
            return ResponseEntity.badRequest().body("User not found");
        }
        userRepository.delete(user.get());
        return ResponseEntity.ok("User deleted");
    }
}
