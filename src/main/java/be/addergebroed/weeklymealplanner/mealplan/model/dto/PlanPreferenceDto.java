package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;


public record PlanPreferenceDto(Long id,
                                int kcalTarget,
                                int mealsPerDay,
                                int servingsPerMeal) {
    public static PlanPreferenceDto convertToDto(PlanPreference planPreference) {
        return new PlanPreferenceDto(
                planPreference.getId(),
                planPreference.getKcalTarget(),
                planPreference.getMealsPerDay(),
                planPreference.getServingsPerMeal()
        );
    }

    public static PlanPreference convertToObj(PlanPreferenceDto planPreference) {
        return new PlanPreference(
                planPreference.id(),
                planPreference.kcalTarget(),
                planPreference.mealsPerDay(),
                planPreference.servingsPerMeal,
                null
        );
    }

}
