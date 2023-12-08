package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.MealPlanPossibility;
import be.addergebroed.weeklymealplanner.user.model.PlanPreference;
import be.addergebroed.weeklymealplanner.user.model.User;

import java.util.Set;

public record MealPlanPossibilityListDto(Long id, PlanPreference planPreference, Set<Recipe> recipes) {
        public static MealPlanPossibilityListDto convertToDto(MealPlanPossibility mealPlanPossibility) {
            return new MealPlanPossibilityListDto(
                    mealPlanPossibility.getId(),
                    mealPlanPossibility.getPlanPreference(),
                    mealPlanPossibility.getRecipes()
            );
        }
}
