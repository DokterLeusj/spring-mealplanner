package be.addergebroed.weeklymealplanner.mealplan.controller;

import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanService;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanToListDtoConvertor;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/mealplan")
@RequiredArgsConstructor
@CrossOrigin
public class MealPlanController {
    private final RecipeService recipeService;
    private final MealPlanService mealPlanService;
    @GetMapping("")
    public List<MealPlanListDto> handleGetAllPlans(){
        List<MealPlan> mealPlans= mealPlanService.fetchAllMealPlans();
        return MealPlanToListDtoConvertor.convertToListDto(mealPlans);
    }
    @GetMapping("/{id}")
    public MealPlanListDto handleGetPlanById(@PathVariable Long id){
        return MealPlanListDto.convertToDto(mealPlanService.fetchMealPlansById(id));
    }

}
