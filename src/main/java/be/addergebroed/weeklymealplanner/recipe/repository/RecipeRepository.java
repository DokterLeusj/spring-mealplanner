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

public interface RecipeRepository extends JpaRepository<Recipe,Long> {

    @Query("SELECT DISTINCT r FROM Recipe r " +
            "JOIN r.recipeIngredients ri " +
            "JOIN ri.ingredient i " +
            "JOIN i.foodCategories fc " +
            "LEFT JOIN fc.dietaryNeeds dn " +
            "WHERE " +
            "(:nameContains IS NULL OR LOWER(r.name) LIKE LOWER(CONCAT('%', :nameContains, '%'))) " +
            "AND (:authorIds IS NULL OR r.author.id IN :authorIds) " +
            "AND (:dietaryNeedIds IS NULL OR dn.id IN :dietaryNeedIds) " +
            "AND (:excludedCategoryIds IS NULL OR fc.id NOT IN :excludedCategoryIds)")


    List<Recipe> findRecipesByCriteria(
            @Param("nameContains") String nameContains,
            @Param("authorIds") Long[] authorIds,
            @Param("excludedCategoryIds") Long[] excludedCategoryIds,
            @Param("dietaryNeedIds") Long[] dietaryNeedIds
    );
}
