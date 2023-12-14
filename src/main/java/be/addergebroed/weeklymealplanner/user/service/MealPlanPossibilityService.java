package be.addergebroed.weeklymealplanner.user.service;


import be.addergebroed.weeklymealplanner.user.model.MealPlanPossibility;

import java.util.List;

public interface MealPlanPossibilityService {
    List<MealPlanPossibility> fetchAllMealPlanPossibilities();

    MealPlanPossibility fetchMealPlanPossibilityById(Long id);
}
