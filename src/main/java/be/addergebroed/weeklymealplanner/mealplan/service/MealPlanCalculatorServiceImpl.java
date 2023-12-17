package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@RequiredArgsConstructor
public class MealPlanCalculatorServiceImpl implements MealPlanCalculatorService {
    private final RecipeService recipeService;

    @Override
    public MealPlan calcMealPlan(MealPlan mealPlan) {
        Set<Recipe> recipes = recipeService.fetchAllRecipesBy(null,
                null,
                null,
                mealPlan.getRestrictionsContainer().getDietaryNeedIds());
        int mealsPerDay = mealPlan.getPlanPreference().getMealsPerDay();

        Set<MealPlanDay> mealPlanDays = fillMealPlanDaysAdRandom(recipes, 5, mealsPerDay);
        return new MealPlan(mealPlan.getPlanPreference(),
                mealPlan.getRestrictionsContainer(),
                mealPlanDays);
    }

    private Set<MealPlanDay> fillMealPlanDaysAdRandom(Set<Recipe> recipes, int totalDays, int mealsPerDay) {
        Set<MealPlanDay> mealPlanDays = new HashSet<>();
        for (int day = 1; day <= totalDays; day++) {
            MealPlanDay planDay = new MealPlanDay();
            planDay.setDayNumber(day);
            for (int meal = 0; meal < mealsPerDay; meal++) {
                Recipe recipe = pickRandomRecipe(recipes);
                planDay.addRecipe(recipe);
                recipes.remove(recipe);
            }
            mealPlanDays.add(planDay);
        }
        return mealPlanDays;
    }

    private Recipe pickRandomRecipe(Set<Recipe> recipes) {
        Random random = new Random();
        int index = random.nextInt(recipes.size());
        return recipes.stream().toList().get(index);
    }

}
