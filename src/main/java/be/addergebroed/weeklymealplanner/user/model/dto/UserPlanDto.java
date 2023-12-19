package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanDayDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.user.model.User;

import java.util.Set;

public record UserPlanDto(Long id,
                          Set<Long> dietaryNeedIds,
                          int mealsPerDay
                          ) {
    public static UserPlanDto convertToDto(User user) {
        return new UserPlanDto(
                user.getId(),
                DietaryNeedDto.convertToIds(user.getDietaryNeeds()),
                user.getPlanPreference().getMealsPerDay()
        );
    }
}
