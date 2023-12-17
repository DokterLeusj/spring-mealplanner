package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

import java.util.Set;

public interface MealPlanCalculatorService {
    MealPlan calcMealPlan(PlanPreference planPreference, Set<DietaryNeed> dietaryNeeds);

   }
