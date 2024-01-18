package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;

import java.util.List;

public interface IngredientService {
    //C
    //R
    List<Ingredient> fetchAllIngredients();
    Ingredient fetchIngredientById(Long id);
    //U
    //D
}
