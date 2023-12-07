package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeDetailDto;
import be.addergebroed.weeklymealplanner.user.model.PlanPreference;
import be.addergebroed.weeklymealplanner.user.model.User;

import java.util.List;
import java.util.stream.Collectors;

public record UserDto(Long id, String username, String imgUrl, PlanPreference planPreference, List<RecipeDetailDto> recipes) {
    public static UserDto convertToDto(User user){
        return new UserDto(
                user.getId(),
                user.getUsername(),
                user.getImgUrl(),
                user.getPlanPreference(),
                user.getRecipes().stream().map(RecipeDetailDto::convertToDto)
                        .collect(Collectors.toList())
        );
    }
}
