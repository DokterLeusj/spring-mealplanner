package be.addergebroed.weeklymealplanner.mealplan.service;


import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import be.addergebroed.weeklymealplanner.user.model.dto.DietaryNeedDto;

import java.util.List;
import java.util.Set;

public interface MealPlanService {
    List<MealPlan> fetchAllMealPlans();

    MealPlan fetchMealPlansById(Long id);

    MealPlanListDto calcMealPlan(int mealsPerDay, Set<Long> dietaryNeeds);
}
