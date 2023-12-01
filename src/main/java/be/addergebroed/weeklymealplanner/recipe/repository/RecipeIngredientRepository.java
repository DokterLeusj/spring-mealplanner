package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecipeIngredientRepository extends JpaRepository<RecipeIngredient,Long> {
}
