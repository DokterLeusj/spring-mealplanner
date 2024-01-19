package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.NewRecipeDto;

public interface RecipeMappingService {
    Recipe mapNewRecipeDtoToRecipe(NewRecipeDto dto);
}
