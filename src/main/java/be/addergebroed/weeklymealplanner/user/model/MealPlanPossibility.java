package be.addergebroed.weeklymealplanner.user.model;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
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
public class MealPlanPossibility {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @ManyToMany
    @JoinTable(name = "mealplan_possibility_per_plan_preference",
            joinColumns = @JoinColumn(name = "mealplan_possibility_id",nullable = false),
            inverseJoinColumns = @JoinColumn(name = "plan_preference_id",nullable = false))
    private Set<PlanPreference> planPreferences = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "mealplan_possibility_per_plan_preference",
            joinColumns = @JoinColumn(name = "mealplan_possibility_id",nullable = false),
            inverseJoinColumns = @JoinColumn(name = "recipe_id",nullable = false))
    private Set<Recipe> recipes;


}
