package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;

public interface MealPlanCalculatorService {
    MealPlan calcMealPlan(MealPlan mealPlan);

   }
