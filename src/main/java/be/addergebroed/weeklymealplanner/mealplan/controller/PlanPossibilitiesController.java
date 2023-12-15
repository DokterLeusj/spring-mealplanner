package be.addergebroed.weeklymealplanner.mealplan.controller;

import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanPossibility;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanPossibilityConvertor;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanPossibilityListDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanPossibilityServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
