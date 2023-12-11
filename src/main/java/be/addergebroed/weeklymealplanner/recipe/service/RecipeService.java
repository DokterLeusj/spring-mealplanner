package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;

import java.util.List;

public interface RecipeService {
    //C
    //R

    List<Recipe> fetchAllRecipes();
   Recipe fetchRecipeById(Long id);

    List<Recipe> fetchFilteredRecipes(String nameContains,
                                      Long[] authorIds,
                                      Long[] excludedCategoryIds,
                                      Long[] dietaryNeedIds
    );

    //U
    //D
}
