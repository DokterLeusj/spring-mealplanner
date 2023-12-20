package be.addergebroed.weeklymealplanner.recipe.controller;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeDetailDto;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeListDto;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/recipe")
@RequiredArgsConstructor
@CrossOrigin
public class RecipeController {
    private final RecipeService recipeService;


    @GetMapping("/{id}")
    public RecipeDetailDto handleGetRecipeById(@PathVariable Long id) {
        return RecipeDetailDto.convertToDto(recipeService.fetchRecipeById(id));

    }

    @GetMapping("")
    public List<RecipeListDto> handleGetAllRecipes(
            @RequestParam(required = false) String nameContains,
            @RequestParam(required = false)Long[] authorIds,
            @RequestParam(required = false)Long[] excludedCategoryIds,
            @RequestParam(required = false)Long[] dietaryNeedIds) {
        Set<Recipe> filteredRecipes = recipeService.fetchAllRecipesBy(nameContains,  authorIds, excludedCategoryIds, dietaryNeedIds);
        return filteredRecipes.stream()
                .map(RecipeListDto::convertToDto)
                .collect(Collectors.toList());
    }


}
