package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.repository.FoodCategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class FoodCategoryServiceImpl implements FoodCategoryService {
    private final FoodCategoryRepository foodCategoryRepo;
    @Override
    public List<FoodCategory> fetchAllCategories() {
        return foodCategoryRepo.findAll();
    }
}
