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


    @Query("SELECT r FROM Recipe r " +
            "JOIN FETCH r.recipeIngredients i "+
            "WHERE (:nameContains IS NULL OR LOWER(r.name) LIKE LOWER(CONCAT('%', :nameContains, '%'))) " +
            "AND (:ids IS NULL OR r.id IN :ids) " +
            "AND (:authorIds IS NULL OR r.author.id IN :authorIds) " +
            "AND (:excludedCategoryIds IS NULL OR  i.ingredient.foodCategories NOT IN :excludedCategoryIds) "
            +"  AND (:dietaryNeedIds IS NULL)"
//            +"  AND (:dietaryNeedIds IS NULL OR i.ingredient.recipeIngredients IN :dietaryNeedIds)"
    )


    List<Recipe> findRecipesByCriteria(
            @Param("nameContains") String nameContains,
            @Param("authorIds") Long[] authorIds,
            @Param("excludedCategoryIds") Long[] excludedCategoryIds,
            @Param("dietaryNeedIds") Long[] dietaryNeedIds
    );

}
