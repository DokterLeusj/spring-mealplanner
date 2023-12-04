package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;

import java.util.Set;

public record IngredientNameDto(String name) {
    public static IngredientNameDto convertToDto(Ingredient ingredient) {
        return new IngredientNameDto(
                ingredient.getName()
        );
    }
}
