package be.addergebroed.weeklymealplanner.mealplan.model.calculators;

import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanDayDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;

import java.util.Set;

public interface MealPlanCalculator {
    MealPlanListDto calcMealPlanDto(int mealsPerDay, Set<Long> dietaryNeedIds);
    MealPlanListDto createMealPlanDto(PlanPreferenceDto planPreferenceDto, Set<Long> dietaryNeedIds, Set<MealPlanDayDto> mealPlanDays) ;
}
