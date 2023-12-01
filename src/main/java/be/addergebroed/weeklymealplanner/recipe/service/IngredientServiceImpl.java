package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.recipe.repository.FoodCategoryRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.IngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class IngredientServiceImpl implements IngredientService {
    private final IngredientRepository ingredientRepo;
    private final FoodCategoryRepository foodCategoryRepo;
    private final RecipeIngredientRepository recipeIngredientRepo;

}
