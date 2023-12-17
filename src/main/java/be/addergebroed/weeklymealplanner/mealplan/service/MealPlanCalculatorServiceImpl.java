package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

import java.util.Set;

public class MealPlanCalculatorServiceImpl implements MealPlanCalculatorService {

    public static MealPlan calcMealPlan(PlanPreference planPreference, RestrictionsContainer restrictions){
       Set<Recipe> recipes=calcRecipes();

        planPreference.getMealsPerDay();
        planPreference.getServingsPerMeal();

        restrictions.dietaryNeeds.stream();

    }


    public static Set<Recipe> calcRecipes() {



        return recipes;
    }
//    public static Set<MealPlanDay> calcMealPlanDays(){
//
//    }

}
