package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.MealPlanPossibility;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MealPlanPossibilityRepository extends JpaRepository<MealPlanPossibility,Long> {
}
