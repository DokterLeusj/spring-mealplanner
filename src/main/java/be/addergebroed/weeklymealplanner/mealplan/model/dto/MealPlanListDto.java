package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;

import java.util.Set;

public record MealPlanListDto(Long id,
                              PlanPreference planPreference,
                              RestrictionsContainer restrictionsContainer,
                              Set<MealPlanDay> mealPlanDays) {
    public static MealPlanListDto convertToDto(MealPlan mealPlan) {
        return new MealPlanListDto(
                mealPlan.getId(),
                mealPlan.getPlanPreference(),
                mealPlan.getRestrictionsContainer(),
                mealPlan.getMealPlanDays()
        );
    }
}
