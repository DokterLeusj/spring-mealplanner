package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.dto.UserNameDto;

import java.util.List;
import java.util.stream.Collectors;

public record RecipeDetailDto(Long id, String name, boolean nutriTech, List<RecipeIngredientDto> recipeIngredient,
                              UserNameDto author) {
    public static RecipeDetailDto convertToDto(Recipe recipe) {
        return new RecipeDetailDto(
                recipe.getId(),
                recipe.getName(),
                recipe.isNutriTech(),
                recipe.getRecipeIngredients().stream()
                        .map(RecipeIngredientDto::convertToDto).collect(Collectors.toList()),
                UserNameDto.convertToDto(recipe.getAuthor())
        );
    }
}
