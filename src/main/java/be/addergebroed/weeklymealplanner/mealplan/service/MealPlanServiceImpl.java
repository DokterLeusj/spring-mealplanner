package be.addergebroed.weeklymealplanner.mealplan.service;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;
import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.mealplan.repository.MealPlanRepository;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class MealPlanServiceImpl implements MealPlanService {
    private final MealPlanRepository mealPlanRepo;

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

}
