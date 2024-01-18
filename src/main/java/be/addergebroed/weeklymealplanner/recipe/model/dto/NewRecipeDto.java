package be.addergebroed.weeklymealplanner.recipe.model.dto;


import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanDay;
import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeIngredient;
import be.addergebroed.weeklymealplanner.recipe.model.RecipeInstruction;
import be.addergebroed.weeklymealplanner.user.model.User;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public record NewRecipeDto(String name, String description, String imgUrl, boolean nutriTech, Long author_id,
                           RecipeIngredientIdsDto[] recipeIngredients, RecipeInstructionDto[] instructions) {

}

//public class NewRecipeDto {
//    @NotBlank
//private     String name;
//    @NotBlank
//    private    String description;
//
//    @NotBlank
//private    String imgUrl;
//    @NotBlank
//    private   boolean nutriTech;
//
//    @NotBlank
//    private String author_id;
//
//    @NotBlank
//    private RecipeIngredientIdDto[]  recipeIngredients;
//
//    @NotBlank
//    private  RecipeInstructionDto[] instructions;
//
//}
