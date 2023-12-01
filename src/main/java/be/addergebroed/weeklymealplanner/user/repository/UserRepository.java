package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
}
