package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;

import java.util.List;

public interface RecipeService {
    //C
    //R

   Recipe fetchRecipeById(Long id);

    List<Recipe> fetchAllRecipesBy(String nameContains,
                                      Long[] authorIds,
                                      Long[] excludedCategoryIds,
                                      Long[] dietaryNeedIds
    );

    //U
    //D
}
