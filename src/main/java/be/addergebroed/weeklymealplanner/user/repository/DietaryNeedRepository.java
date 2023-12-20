package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DietaryNeedRepository extends JpaRepository<DietaryNeed,Long> {
 }
