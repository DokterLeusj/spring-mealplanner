package be.addergebroed.weeklymealplanner.mealplan.controller;

import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanService;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanToListDtoConvertor;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/api/v1/meal-plan")
@RequiredArgsConstructor
@CrossOrigin
public class MealPlanController {
    private final MealPlanService mealPlanService;

    @GetMapping("")
    public List<MealPlanListDto> handleGetAllPlans() {
        List<MealPlan> mealPlans = mealPlanService.fetchAllMealPlans();
        return MealPlanToListDtoConvertor.convertToListDto(mealPlans);
    }

    @GetMapping("/draft")
    public MealPlanListDto handleCalcDraftPlan(
            @RequestParam(required = true) int mealsPerDay,
            @RequestParam(required = false) Set<Long> dietaryNeeds) {
        return mealPlanService.calcMealPlan(mealsPerDay, dietaryNeeds);
    }

    @GetMapping("/{id}")
    public MealPlanListDto handleGetPlanById(@PathVariable Long id) {
        return MealPlanListDto.convertToDto(mealPlanService.fetchMealPlansById(id));
    }

}
