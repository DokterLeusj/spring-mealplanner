package be.addergebroed.weeklymealplanner.mealplan.model;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

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

    @ManyToMany(mappedBy = "mealPlanDays")
    private List<Recipe> recipes;

    public void addRecipe(Recipe recipe){
        this.recipes.add(recipe);
    }

}
