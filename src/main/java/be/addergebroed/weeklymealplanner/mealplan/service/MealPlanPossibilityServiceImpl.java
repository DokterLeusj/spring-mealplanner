package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanPossibility;
import be.addergebroed.weeklymealplanner.mealplan.model.PlanPreference;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MealPlanPossibilityServiceImpl implements MealPlanPossibilityService {
    private final PlanPreference.MealPlanPossibilityRepository mealPlanPossibilityRepo;

    @Override
    public List<MealPlanPossibility> fetchAllMealPlanPossibilities() {
        return mealPlanPossibilityRepo.findAll();
    }

    @Override
    public MealPlanPossibility fetchMealPlanPossibilityById(Long id) {
        if(id==null){
            throw new IllegalArgumentException("Id can not be null");
        }
        return mealPlanPossibilityRepo.findById(id).orElseThrow(()->new EntityNotFoundException("Could not find meal plan possibility with id "+id));
    }

}
