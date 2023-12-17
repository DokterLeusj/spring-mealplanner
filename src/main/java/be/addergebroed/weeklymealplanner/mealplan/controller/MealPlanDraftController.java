package be.addergebroed.weeklymealplanner.mealplan.controller;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.RestrictionsContainer;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanToListDtoConvertor;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanCalculatorService;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanService;
import be.addergebroed.weeklymealplanner.recipe.service.RecipeService;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import be.addergebroed.weeklymealplanner.user.model.dto.DietaryNeedDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/api/v1/draft-mealplan")
@RequiredArgsConstructor
@CrossOrigin
public class MealPlanDraftController {
    private final MealPlanService mealPlanService;

    @GetMapping("")
    public MealPlanListDto handleCalcDraftPlan(
            @RequestParam(required = true) PlanPreferenceDto planPreference,
            @RequestParam(required = false) Set<Long> dietaryNeeds) {
        return mealPlanService.calcMealPlan(planPreference,dietaryNeeds);
    }


}
