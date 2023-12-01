package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {
    private final RecipeIngredientRepository recipeIngredientRepo;
    private final RecipeRepository recipeRepo;
}
