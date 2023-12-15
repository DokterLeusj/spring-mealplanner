package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanPossibility;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;

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
