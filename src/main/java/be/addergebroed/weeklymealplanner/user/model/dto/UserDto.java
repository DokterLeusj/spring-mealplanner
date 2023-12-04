package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeListDto;
import be.addergebroed.weeklymealplanner.user.model.User;

public record UserDto(Long id) {
    public static UserDto convertToDto(User user) {
        return new UserDto(
                user.getId()
        );
    }
}
