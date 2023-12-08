package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;

public record RecipeIngredientDto(double qty,
                                  FoodUnitDto foodUnit,
                                  IngredientNameDto ingredient) {
    public static RecipeIngredientDto convertToDto(RecipeIngredient recipeIngredient) {
     return new RecipeIngredientDto(recipeIngredient.getId(),
                FoodUnitDto.convertToDto(recipeIngredient.getUnit()),
             IngredientNameDto.convertToDto(recipeIngredient.getIngredient()));

    }
}
