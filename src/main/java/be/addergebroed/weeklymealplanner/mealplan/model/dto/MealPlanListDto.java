package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;

import java.util.Set;

public record MealPlanListDto(Long id, PlanPreference planPreference, Set<Recipe> recipes) {
        public static MealPlanListDto convertToDto(MealPlan mealPlan) {
            return new MealPlanListDto(
                    mealPlan.getId(),
                    mealPlan.getPlanPreference(),
                    mealPlan.getRecipes()
            );
        }
}
