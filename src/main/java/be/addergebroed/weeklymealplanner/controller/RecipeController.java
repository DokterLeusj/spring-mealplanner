package be.addergebroed.weeklymealplanner.controller;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Set;

@RestController
@RequestMapping("api/v1/recipe")
@RequiredArgsConstructor
@CrossOrigin
public class RecipeController {
    private final RecipeService recipeService;
//    @GetMapping("")
//    public Set<Recipe> handleGetAllRecipes(){
//
//    }
}
