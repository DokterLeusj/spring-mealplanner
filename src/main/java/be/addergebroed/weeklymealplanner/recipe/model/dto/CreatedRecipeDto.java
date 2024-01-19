package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;

public record CreatedRecipeDto(Long id, String name) {
    public static CreatedRecipeDto convertToDto(Recipe recipe){
        return new CreatedRecipeDto(recipe.getId(),recipe.getName());
    }
}
