package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.model.dto.UserDto;
import jakarta.persistence.*;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public record RecipeDetailDto(Long id, String name, boolean nutriTech, List<RecipeIngredientDto> recipeIngredient,
                              UserDto author) {
    public static RecipeDetailDto convertToDto(Recipe recipe) {
        return new RecipeDetailDto(
                recipe.getId(),
                recipe.getName(),
                recipe.isNutriTech(),
                recipe.getRecipeIngredients().stream()
                        .map(RecipeIngredientDto::convertToDto).collect(Collectors.toList()),
                UserDto.convertToDto(recipe.getAuthor())
        );
    }
}
