package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> findByUsername(String username);
}
