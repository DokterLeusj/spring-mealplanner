package be.addergebroed.weeklymealplanner.recipe.repository;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    @Query("SELECT DISTINCT r FROM Recipe r " +
            "WHERE ((:nameContains IS NULL OR LOWER(r.name) LIKE LOWER(CONCAT('%', :nameContains, '%')))) " +
            "       AND (:authorIds IS NULL OR r.author.id IN :authorIds) " +
            "       AND r.id not IN (" +
            "           SELECT r.id FROM Recipe r " +
            "               JOIN r.recipeIngredients ri " +
            "                JOIN ri.ingredient i " +
            "                JOIN i.foodCategories fc " +
            "                 JOIN fc.dietaryNeeds dn " +
            "           where ((:excludedCategoryIds IS NOT NULL AND fc.id in :excludedCategoryIds) " +
            "               or (:dietaryNeedIds IS NOT NULL AND dn.id in :dietaryNeedIds )))")
    Set<Recipe> findAllBy(
            @Param("nameContains") String nameContains,
            @Param("authorIds") Long[] authorIds,
            @Param("excludedCategoryIds") Long[] excludedCategoryIds,
            @Param("dietaryNeedIds") Long[] dietaryNeedIds
    );
}
