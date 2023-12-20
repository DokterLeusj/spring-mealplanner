package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

import java.util.Set;
import java.util.stream.Collectors;

public record MealPlanListDto(Long id,
                              PlanPreferenceDto planPreference,
                              Set<Long> dietaryNeedIds,
                              Set<MealPlanDayDto> mealPlanDays) {
    public static MealPlanListDto convertToDto(MealPlan mealPlan) {
        return new MealPlanListDto(
                mealPlan.getId(),
                PlanPreferenceDto.convertToDto(mealPlan.getPlanPreference()),
                mealPlan.getRestrictionsContainer()
                        .getDietaryNeeds()
                        .stream()
                        .map(DietaryNeed::getId)
                        .collect(Collectors.toSet())
                ,
                mealPlan.getMealPlanDays().stream()
                        .map(MealPlanDayDto::convertToDto)
                        .collect(Collectors.toSet())
        );
    }
}
