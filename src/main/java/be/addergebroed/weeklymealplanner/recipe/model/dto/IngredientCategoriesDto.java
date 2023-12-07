package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public record IngredientCategoriesDto(Long id, List<FoodCategoryDto> foodCategory) {
      public static IngredientCategoriesDto convertToDto(Ingredient ingredient) {
        return new IngredientCategoriesDto(
                ingredient.getId(),
                ingredient.getFoodCategories().stream().map(FoodCategoryDto::convertToDto).collect(Collectors.toList())
        );
    }
}
