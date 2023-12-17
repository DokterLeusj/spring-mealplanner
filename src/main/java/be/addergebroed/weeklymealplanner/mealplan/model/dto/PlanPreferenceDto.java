package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import lombok.Getter;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
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
