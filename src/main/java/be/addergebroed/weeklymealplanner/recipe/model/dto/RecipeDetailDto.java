package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeInstruction;
import be.addergebroed.weeklymealplanner.user.model.dto.UserNameDto;

import java.util.List;
import java.util.stream.Collectors;

public record RecipeDetailDto(Long id, String name, String description, String imgUrl,boolean nutriTech,
                              List<RecipeIngredientDto> ingredients, UserNameDto author) {
    public static RecipeDetailDto convertToDto(Recipe recipe) {
        return new RecipeDetailDto(
                recipe.getId(),
                recipe.getName(),
                recipe.getDescription(),
                recipe.getImgUrl(),
                recipe.isNutriTech(),
                recipe.getRecipeIngredients().stream()
                        .map(RecipeIngredientDto::convertToDto).collect(Collectors.toList()),
                recipe.getInstructions().stream()
                        .map(RecipeInstruction::)
                UserNameDto.convertToDto(recipe.getAuthor())
        );
    }
}
