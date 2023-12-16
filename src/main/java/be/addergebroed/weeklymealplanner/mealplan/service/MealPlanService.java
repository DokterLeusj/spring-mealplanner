package be.addergebroed.weeklymealplanner.mealplan.service;


import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;

import java.util.List;

public interface MealPlanService {
    List<MealPlan> fetchAllMealPlans();

    MealPlan fetchMealPlansById(Long id);
}
