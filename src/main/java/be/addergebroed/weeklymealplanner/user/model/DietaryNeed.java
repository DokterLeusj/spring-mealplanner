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
public class DietaryNeed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany(mappedBy = "dietaryNeeds")
    private Set<FoodCategory> excludedCategories = new HashSet<>();
}
