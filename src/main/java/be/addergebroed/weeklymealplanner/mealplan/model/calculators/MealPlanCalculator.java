package be.addergebroed.weeklymealplanner.mealplan.model.calculators;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;

import java.util.Set;

public interface MealPlanCalculator {
    MealPlan calcMealPlan(PlanPreferenceDto planPreference, Set<Long> dietaryNeedIds);
    MealPlan setMealPlan(PlanPreferenceDto planPreferenceDto, Set<Long> dietaryNeedIds, Set<MealPlanDay> mealPlanDays);
}
