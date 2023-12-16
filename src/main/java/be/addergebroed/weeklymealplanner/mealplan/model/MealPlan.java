package be.addergebroed.weeklymealplanner.mealplan.model;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;
import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MealPlan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @ManyToOne
    @JoinColumn(name = "plan_preference_id", nullable = false)
    private PlanPreference planPreference;

    @ManyToOne
    @JoinColumn(name = "dietary_need_id", nullable = false)
    private DietaryNeed dietaryNeed;


    @ManyToMany
    @JoinTable(name = "mealplan_possibility_per_plan_preference",
            joinColumns = @JoinColumn(name = "mealplan_possibility_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "recipe_id", nullable = false))
    private Set<Recipe> recipes;

    public MealPlan(PlanPreference planPreference) {
        this.planPreference = planPreference;
        this.recipes = getRecipesForPlanPreference(planPreference);
    }

    private Set<Recipe> getRecipesForPlanPreference(PlanPreference planPreference) {
        Set<Recipe> recipes = new HashSet<>();
//        Set<FoodCategory> excludedCategories = getExcludedCategories(planPreference.getDietaryNeeds()); // Can never be in a recipe

        Set<Ingredient> usedIngredients = new HashSet<>();



        return recipes;
    }

    private Set<FoodCategory> getExcludedCategories(Set<DietaryNeed> dietaryNeeds) {
        Set<FoodCategory> excludedCategories = new HashSet<>();
        dietaryNeeds.stream()
                .map(DietaryNeed::getExcludedCategories)
                .forEach(excludedCategories::addAll);
        return excludedCategories;
    }
}
