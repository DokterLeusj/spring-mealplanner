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

    @ManyToMany
    @JoinTable(name = "dietary_need_excluded_category",
            joinColumns = @JoinColumn(name = "dietary_need_id",nullable = false),
            inverseJoinColumns = @JoinColumn(name = "excl_food_category_id",nullable = false))
    private Set<FoodCategory> excludedCategories = new HashSet<>();
}
