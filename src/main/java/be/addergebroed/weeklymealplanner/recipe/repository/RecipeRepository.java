package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeInstruction;
import be.addergebroed.weeklymealplanner.user.model.User;
import jakarta.persistence.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    @Query("SELECT r FROM Recipe r " +
            "WHERE ((:nameContains IS NULL OR LOWER(r.name) LIKE LOWER(CONCAT('%', :nameContains, '%')))) " +
            "       AND (:authorIds IS NULL OR r.author.id IN :authorIds) " +
            "       AND r.id not IN (" +
            "           SELECT r.id FROM Recipe r " +
            "               left JOIN r.recipeIngredients ri " +
            "                left JOIN ri.ingredient i " +
            "                left JOIN i.foodCategories fc " +
            "                left JOIN fc.dietaryNeeds dn " +
            "           where ((:excludedCategoryIds IS NOT NULL AND fc.id in :excludedCategoryIds) " +
            "               or (:dietaryNeedIds IS NOT NULL AND dn.id in :dietaryNeedIds )))")
    List<Recipe> findRecipesByCriteria(
            @Param("nameContains") String nameContains,
            @Param("authorIds") Long[] authorIds,
            @Param("excludedCategoryIds") Long[] excludedCategoryIds,
            @Param("dietaryNeedIds") Long[] dietaryNeedIds
    );
}
