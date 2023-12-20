package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {
    private final RecipeIngredientRepository recipeIngredientRepo;
    private final RecipeRepository recipeRepo;

    @Override
    public Recipe fetchRecipeById(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Id can not be null");
        }
        return recipeRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("Could not find recipe with id " + id));
    }

    @Override
    public Set<Recipe> fetchAllRecipesBy(String nameContains,
                                         Long[] authorIds,
                                         Long[] excludedCategoryIds,
                                         Long[] dietaryNeedIds) {
        return recipeRepo.findAllBy(nameContains,authorIds,excludedCategoryIds,dietaryNeedIds);
    }
}
