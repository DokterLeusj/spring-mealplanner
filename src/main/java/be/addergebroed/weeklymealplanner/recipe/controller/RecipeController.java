package be.addergebroed.weeklymealplanner.recipe.controller;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeListDto;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/recipe")
@RequiredArgsConstructor
@CrossOrigin
public class RecipeController {
    private final RecipeService recipeService;
    @GetMapping("")
    public List<RecipeListDto> handleGetAllRecipes(){
        List<Recipe> allRecipes = recipeService.fetchAllRecipes();
        return allRecipes.stream()
                .map(RecipeListDto::convertToDto)
                .collect(Collectors.toList());

    }
}
