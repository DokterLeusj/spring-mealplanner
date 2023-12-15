package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.dto.UserNameDto;


public record RecipeListDto(Long id,
                            String name,
                            String description,
                            String imgUrl,
                            boolean nutriTech,
                            UserNameDto author) {
    public static RecipeListDto convertToDto(Recipe recipe) {
        return new RecipeListDto(
                recipe.getId(),
                recipe.getName(),
                recipe.getDescription(),
                recipe.getImgUrl(),
                recipe.isNutriTech(), UserNameDto.convertToDto(recipe.getAuthor())
        );
    }
}
