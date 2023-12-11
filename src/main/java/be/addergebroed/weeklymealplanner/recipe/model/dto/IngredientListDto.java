package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;


public record IngredientListDto(Long id, String name) {
    public static IngredientListDto convertToDto(Ingredient ingredient) {
      return new IngredientListDto(ingredient.getId(), ingredient.getName());
    }
}
