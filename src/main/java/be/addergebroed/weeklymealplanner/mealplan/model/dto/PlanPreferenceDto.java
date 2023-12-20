package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;

import java.util.Optional;


public record PlanPreferenceDto(Long id,
                                Optional<Integer> kcalTarget,
                                int mealsPerDay,
                                Optional<Integer>  servingsPerMeal) {
    public static PlanPreferenceDto convertToDto(PlanPreference planPreference) {
        return new PlanPreferenceDto(
                planPreference.getId(),
               Optional.of(planPreference.getKcalTarget()),
                planPreference.getMealsPerDay(),
                Optional.of(planPreference.getServingsPerMeal())
        );
    }

}
