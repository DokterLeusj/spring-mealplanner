package be.addergebroed.weeklymealplanner.user.model;

import jakarta.persistence.*;
import lombok.*;

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
    @Column
    private String kcalTarget;
    @Column(nullable = false)
    private int mealsPerDay;
    @Column
    private DietaryNeed dietaryNeed;
    @ManyToOne(
            @JoinColumn(name = "user_id",nullable = false))
    private User user;


}
