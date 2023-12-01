package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodCategoryRepository extends JpaRepository<FoodCategory,Long> {
}
