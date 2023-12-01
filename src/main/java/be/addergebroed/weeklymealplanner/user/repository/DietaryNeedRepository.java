package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DietaryNeedRepository extends JpaRepository<DietaryNeed,Long> {
}
