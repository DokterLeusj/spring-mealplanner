package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;

public record RecipeIngredientIdsDto(double qty, Long foodUnitId, Long ingredientId) {
    public static RecipeIngredientIdsDto convertToDto(RecipeIngredient recipeIngredient) {
        return new RecipeIngredientIdsDto(
                recipeIngredient.getQty(),
                recipeIngredient.getUnit().getId(),
                recipeIngredient.getIngredient().getId()
        );

    }

}
