package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public record FoodCategoryDto(Long id, String name, boolean allergen, List<IngredientNameDto> ingredients) {
    public static FoodCategoryDto convertToDto(FoodCategory category){
        return new FoodCategoryDto(
                category.getId(),
                category.getName(),
                category.isAllergen(),
                category.getIngredients().stream().map(IngredientNameDto::convertToDto).collect(Collectors.toList())
        );
    }
}
