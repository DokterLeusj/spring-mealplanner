package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

public record FoodCategoryListDto(Long id, String name, boolean allergen) {
    public static FoodCategoryListDto convertToDto(FoodCategory foodCategory) {
        return new FoodCategoryListDto(
                foodCategory.getId(),
                foodCategory.getName(),
                foodCategory.isAllergen()
        );
    }
}
