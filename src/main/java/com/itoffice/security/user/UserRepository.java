package com.itoffice.security.user;

import com.itoffice.security.certificate.Certificate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByLogin(String login);

    boolean existsByLogin(String login);

    @Query("select us from User us" +
            " where lower(us.name) like :searchWord" +
            " or lower(us.login) like :searchWord")
    List<Certificate> searchAdmin(String searchWord);

}
