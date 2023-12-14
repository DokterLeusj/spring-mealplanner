package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeRepository;
import jakarta.persistence.EntityNotFoundException;
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

    @Override
    public Recipe fetchRecipeById(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Id can not be null");
        }
        return recipeRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("Could not find recipe with id " + id));
    }

    @Override
    public List<Recipe> fetchFilteredRecipes(String nameContains,
                                             Long[] authorIds,
                                             Long[] excludedCategoryIds,
                                             Long[] dietaryNeedIds) {
        return recipeRepo.findRecipesByCriteria(nameContains,authorIds,excludedCategoryIds,dietaryNeedIds);
    }
}
