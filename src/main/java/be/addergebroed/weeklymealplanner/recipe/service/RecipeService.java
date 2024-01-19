package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;

import java.util.List;
import java.util.Set;

public interface RecipeService {
    //C
    Recipe registerNewRecipe(Recipe recipe);
    //R

   Recipe fetchRecipeById(Long id);

    Set<Recipe> fetchAllRecipesBy(String nameContains,
                                  Long[] authorIds,
                                  Long[] excludedCategoryIds,
                                  Long[] dietaryNeedIds
    );

    //U
    //D
}
