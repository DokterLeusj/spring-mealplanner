package be.addergebroed.weeklymealplanner.mealplan.model;

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
    private Long id;

    @ManyToOne
    @JoinColumn(name = "plan_preference_id", nullable = false)
    private PlanPreference planPreference;

    @ManyToOne
    @JoinColumn(name = "restrictions_id", nullable = true)
    private RestrictionsContainer restrictionsContainer;

    @ManyToMany
    @JoinTable(name = "meal_plan_days_per_meal_plan",
            joinColumns = @JoinColumn(name = "meal_plan_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "meal_plan_day_id", nullable = false))
    private Set<MealPlanDay> mealPlanDays = new HashSet<>();

    public MealPlan(PlanPreference planPreference, RestrictionsContainer restrictionsContainer, Set<MealPlanDay> mealPlanDays) {
        this.planPreference = planPreference;
        this.restrictionsContainer = restrictionsContainer;
        this.mealPlanDays = mealPlanDays;
    }



}
