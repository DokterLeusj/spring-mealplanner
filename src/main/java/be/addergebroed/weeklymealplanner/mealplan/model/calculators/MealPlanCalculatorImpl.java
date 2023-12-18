package be.addergebroed.weeklymealplanner.mealplan.model.calculators;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.user.service.DietaryNeedService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MealPlanCalculatorImpl implements MealPlanCalculator {
    private final RecipeService recipeService;
    private final DietaryNeedService dietaryNeedService;

    @Override
    public MealPlan calcMealPlan(PlanPreferenceDto planPreference, Set<Long> dietaryNeedIds) {
        Set<Recipe> recipes = recipeService.fetchAllRecipesBy(null,
                null,
                null,
                dietaryNeedIds.toArray(Long[]::new));
        int mealsPerDay = planPreference.mealsPerDay();
        Set<MealPlanDay> mealPlanDays = fillMealPlanDaysAdRandom(recipes, 5, mealsPerDay);
        return setMealPlan(planPreference,dietaryNeedIds,mealPlanDays);
    }

    @Override
    public MealPlan setMealPlan(PlanPreferenceDto planPreferenceDto, Set<Long> dietaryNeedIds, Set<MealPlanDay> mealPlanDays){
        return new MealPlan(PlanPreferenceDto.convertToObj(planPreferenceDto),
                new RestrictionsContainer(
                        null,
                        dietaryNeedIds.stream()
                                .map(dietaryNeedService::fetchDietaryNeedById)
                                .collect(Collectors.toSet()),
                        null),
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
