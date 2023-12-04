package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.FoodUnit;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import jakarta.persistence.*;

import java.util.Set;

public record FoodUnitDto(Long id, String name) {
    public static FoodUnitDto convertToDto(FoodUnit unit) {
        return new FoodUnitDto(
                unit.getId(),unit.getName()
        );
    }
}
