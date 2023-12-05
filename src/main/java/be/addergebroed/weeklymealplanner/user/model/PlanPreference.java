package be.addergebroed.weeklymealplanner.user.model;

import be.addergebroed.weeklymealplanner.recipe.model.FoodCategory;
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
public class PlanPreference {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int kcalTarget;

    private int mealsPerDay;

    private int servingsPerMeal;


    @ManyToMany
    @JoinTable(name = "plan_preference_per_diet",
            joinColumns = @JoinColumn(name = "plan_preference_id",nullable = false),
            inverseJoinColumns = @JoinColumn(name = "dietary_need_id",nullable = false))
    private Set<DietaryNeed> dietaryNeeds = new HashSet<>();

    @OneToMany(mappedBy="planPreference")
    private Set<User> users = new HashSet<>();


}
