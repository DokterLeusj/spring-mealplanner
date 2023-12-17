package be.addergebroed.weeklymealplanner.mealplan.model;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RestrictionsContainer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany
    @JoinTable(name = "dietary_needs_per_restriction",
            joinColumns = @JoinColumn(name = "restriction_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "diet_id", nullable = false))
    private Set<DietaryNeed> dietaryNeeds;

    @OneToMany(mappedBy = "restrictionsContainer")
    private Set<MealPlan> mealPlans;
}
