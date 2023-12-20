package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;

import java.util.Set;

public record UserPlanDto(Long id,
                          Set<DietaryNeedDto> dietaryNeeds,
                          int mealsPerDay
                          ) {
    public static UserPlanDto convertToDto(User user) {
        return new UserPlanDto(
                user.getId(),
                DietaryNeedDto.convertToDto(user.getDietaryNeeds()),
                user.getPlanPreference().getMealsPerDay()
        );
    }
}
