package be.addergebroed.weeklymealplanner.mealplan.repository;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MealPlanRepository extends JpaRepository<Long, MealPlan> {
}
