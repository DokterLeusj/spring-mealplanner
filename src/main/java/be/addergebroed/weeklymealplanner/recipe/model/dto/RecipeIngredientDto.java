package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;

public record RecipeIngredientDto(Long id, double qty, FoodUnitDto foodUnit, IngredientNameDto ingredient) {
    public static RecipeIngredientDto convertToDto(RecipeIngredient recipeIngredient) {
     return new RecipeIngredientDto(recipeIngredient.getId(),
                recipeIngredient.getQty(),
                FoodUnitDto.convertToDto(recipeIngredient.getUnit()),
             IngredientNameDto.convertToDto(recipeIngredient.getIngredient()));

    }
}
