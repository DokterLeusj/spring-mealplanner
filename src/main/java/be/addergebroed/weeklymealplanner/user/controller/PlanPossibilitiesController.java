package be.addergebroed.weeklymealplanner.user.controller;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeDetailDto;
import be.addergebroed.weeklymealplanner.recipe.model.dto.RecipeListDto;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.user.model.MealPlanPossibility;
import be.addergebroed.weeklymealplanner.user.model.dto.MealPlanPossibilityConvertor;
import be.addergebroed.weeklymealplanner.user.model.dto.MealPlanPossibilityListDto;
import be.addergebroed.weeklymealplanner.user.service.MealPlanPossibilityServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/mealplan")
@RequiredArgsConstructor
@CrossOrigin
public class PlanPossibilitiesController {
    private final RecipeService recipeService;
    private final MealPlanPossibilityServiceImpl mealPlanPossibilityService;
    @GetMapping("")
    public List<MealPlanPossibilityListDto> handleGetAllPlans(){
        List<MealPlanPossibility> mealplans=mealPlanPossibilityService.fetchAllMealPlanPossibilities();
        return MealPlanPossibilityConvertor.convertToListDto(mealplans);
    }
    @GetMapping("/{id}")
    public MealPlanPossibilityListDto handleGetPlanById(@PathVariable Long id){
        return MealPlanPossibilityListDto.convertToDto(mealPlanPossibilityService.fetchMealPlanPossibilityById(id));
    }
}
