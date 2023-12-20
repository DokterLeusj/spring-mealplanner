package be.addergebroed.weeklymealplanner.mealplan.model;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MealPlanDay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int dayNumber;

    @ManyToMany
    @JoinTable(name = "recipes_per_meal_plan_day",
            joinColumns = @JoinColumn(name = "meal_plan_day_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "recipe_id", nullable = false))
    private List<Recipe> recipes=new ArrayList<>();

    public void addRecipe(Recipe recipe){
        this.recipes.add(recipe);
    }

}
