package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeListDto;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public record MealPlanDayDto(int dayNumber,
                             List<RecipeListDto> recipes) {
    public static MealPlanDayDto convertToDto(MealPlanDay mealPlanDay) {
        return new MealPlanDayDto(
                mealPlanDay.getDayNumber(),
                mealPlanDay.getRecipes().stream()
                        .map(RecipeListDto::convertToDto)
                        .collect(Collectors.toList())
        );
    }
}
