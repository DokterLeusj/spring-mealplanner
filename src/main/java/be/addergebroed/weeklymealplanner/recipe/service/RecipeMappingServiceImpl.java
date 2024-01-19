package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.recipe.model.dto.NewRecipeDto;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeInstructionDto;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RecipeMappingServiceImpl implements RecipeMappingService {
    UserService userService;
    IngredientService ingredientService;
    RecipeIngredientService recipeIngredientService;

    @Override
    public Recipe mapNewRecipeDtoToRecipe(NewRecipeDto dto) {
        Recipe recipe = new Recipe();
        recipe.setName(dto.name());
        recipe.setDescription(dto.description());
        recipe.setImgUrl(dto.imgUrl());
        recipe.setNutriTech(dto.nutriTech());

        recipe.setInstructions(Arrays.stream(dto.instructions())
                .map(RecipeInstructionDto::convertFromDto)
                .collect(Collectors.toSet())
        );

        recipe.setAuthor(userService.fetchUserById( dto.author_id()));

        recipe.setRecipeIngredients(Arrays.stream(dto.recipeIngredients())
                        .map(i-> {
                            recipeIngredientService.fetchRecipeIngredientByValues(i.qty(),i.foodUnitId(),i.ingredientId()

                        })
        )
                ;
        return recipe;

    }
}
