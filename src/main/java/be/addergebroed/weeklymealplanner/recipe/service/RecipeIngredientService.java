package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;

import java.util.Optional;
import java.util.Set;

public interface RecipeIngredientService {
    //C

    //R
   RecipeIngredient fetchRecipeIngredientByValues(double qty, Long unitId, Long ingredientId);

    //U
    //D
}
