package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.MealPlanListDto;
import be.addergebroed.weeklymealplanner.mealplan.model.dto.PlanPreferenceDto;
import be.addergebroed.weeklymealplanner.mealplan.repository.MealPlanRepository;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class MealPlanServiceImpl implements MealPlanService {
    private final MealPlanRepository mealPlanRepo;
private final MealPlanCalculatorService mealPlanCalculatorService;

    @Override
    public List<MealPlan> fetchAllMealPlans() {
        return mealPlanRepo.findAll();
    }

    @Override
    public MealPlan fetchMealPlansById(Long id) {
        if(id==null){
            throw new IllegalArgumentException("Id can not be null");
        }
        return mealPlanRepo.findById(id).orElseThrow(()->new EntityNotFoundException("Could not find meal plan possibility with id "+id));
    }

    @Override
    public MealPlanListDto calcMealPlan(PlanPreferenceDto planPreference, Set<Long> dietaryNeeds) {
      MealPlan mealPlan=  mealPlanCalculatorService.calcMealPlan(
              planPreference,
              dietaryNeeds);
        return MealPlanListDto.convertToDto(mealPlan);
    }

}
