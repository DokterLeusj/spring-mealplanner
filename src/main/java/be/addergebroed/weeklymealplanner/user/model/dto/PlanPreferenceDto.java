package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.PlanPreference;

public record PlanPreferenceDto(Long id,
                                int kcalTarget,
                                int mealsPerDay,
                                int servingsPerMeal) {
    public static PlanPreferenceDto convertToDto(PlanPreference planPreference){
        return new PlanPreferenceDto(
                planPreference.getId(),
                planPreference.getKcalTarget(),
                planPreference.getMealsPerDay(),
                planPreference.getServingsPerMeal()
        );
    }
}
