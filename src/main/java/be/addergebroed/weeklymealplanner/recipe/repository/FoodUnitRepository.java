package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.FoodUnit;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodUnitRepository extends JpaRepository<FoodUnit,Long> {
}
