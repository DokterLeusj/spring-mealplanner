package be.addergebroed.weeklymealplanner.mealplan.service;


import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanPossibility;

import java.util.List;

public interface MealPlanPossibilityService {
    List<MealPlanPossibility> fetchAllMealPlanPossibilities();

    MealPlanPossibility fetchMealPlanPossibilityById(Long id);
}
