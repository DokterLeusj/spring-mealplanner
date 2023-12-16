package be.addergebroed.weeklymealplanner.mealplan.model;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import be.addergebroed.weeklymealplanner.user.model.User;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.data.jpa.repository.JpaRepository;

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

    @OneToMany(mappedBy = "planPreference")
    private Set<User> users = new HashSet<>();

    @OneToMany(mappedBy = "planPreference")
    private Set<MealPlan> mealPlans = new HashSet<>();

    public static interface MealPlanPossibilityRepository extends JpaRepository<MealPlan,Long> {
    }

    public static interface PlanPreferenceRepository extends JpaRepository<PlanPreference,Long> {
    }
}
