package be.addergebroed.weeklymealplanner.recipe.controller;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.dto.FoodCategoryListDto;
import be.addergebroed.weeklymealplanner.recipe.model.dto.IngredientListDto;
import be.addergebroed.weeklymealplanner.recipe.service.FoodCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/food-category")
@RequiredArgsConstructor
@CrossOrigin
public class FoodCategoryController {
    private final FoodCategoryService foodCategoryService;
    @GetMapping("")
    public List<FoodCategoryListDto> handleGetAllCategories(){
        List<FoodCategory> allCategories = foodCategoryService.fetchAllCategories();
        return allCategories.stream()
                .map(FoodCategoryListDto::convertToDto)
                .collect(Collectors.toList());
    }
}
