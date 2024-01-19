package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.recipe.repository.RecipeIngredientRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RecipeIngredientServiceImpl implements RecipeIngredientService {
    private final RecipeIngredientRepository recipeIngredientRepo;

    @Override
    public RecipeIngredient fetchRecipeIngredientByValues(double qty, Long unitId, Long ingredientId) {
        Optional<RecipeIngredient> optional=  recipeIngredientRepo.findRecipeIngredientByIngredient_IdAndQtyAndUnit_Id(ingredientId,qty, unitId);
        if(optional.isPresent()){
            return optional.get();
        }else{
            throw new EntityNotFoundException("Could not find a recipe ingredient with these characteristics");
        }
    }
}
