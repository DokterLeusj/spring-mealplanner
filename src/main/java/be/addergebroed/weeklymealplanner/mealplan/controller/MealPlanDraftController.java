package be.addergebroed.weeklymealplanner.mealplan.controller;

import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.mealplan.service.MealPlanService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

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
