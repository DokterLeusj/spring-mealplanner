package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.repository.FoodCategoryRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.IngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class IngredientServiceImpl implements IngredientService {
    private final IngredientRepository ingredientRepo;
    private final FoodCategoryRepository foodCategoryRepo;
    private final RecipeIngredientRepository recipeIngredientRepo;
    @Override
    public List<Ingredient> fetchAllIngredients() {
        return ingredientRepo.findAll();
    }
}
