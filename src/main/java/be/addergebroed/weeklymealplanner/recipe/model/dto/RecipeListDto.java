package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.dto.UserDto;


public record RecipeListDto(Long id, String name, boolean nutriTech, UserDto author) {
    public static RecipeListDto convertToDto(Recipe recipe) {
        return new RecipeListDto(
                recipe.getId(), recipe.getName(), recipe.isNutriTech(), UserDto.convertToDto(recipe.getAuthor())
        );
    }
}
