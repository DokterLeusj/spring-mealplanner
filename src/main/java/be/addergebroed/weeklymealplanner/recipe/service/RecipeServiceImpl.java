package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {
    private final RecipeIngredientRepository recipeIngredientRepo;
    private final RecipeRepository recipeRepo;

    @Override
    public List<Recipe> fetchAllRecipes() {
     return recipeRepo.findAll();
    }
}
