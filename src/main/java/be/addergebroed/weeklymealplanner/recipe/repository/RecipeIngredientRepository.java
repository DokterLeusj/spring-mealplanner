package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RecipeIngredientRepository extends JpaRepository<RecipeIngredient,Long> {
    Optional<RecipeIngredient> findRecipeIngredientByIngredient_IdAndQtyAndUnit_Id(Long ingredientId, double qty, Long unitId);
}
