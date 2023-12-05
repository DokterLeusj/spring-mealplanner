package be.addergebroed.weeklymealplanner.recipe.model;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FoodCategory {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        Long id;

        @Column(nullable = false)
        String name;

        @Column(nullable = false)
        boolean allergen;

        @ManyToMany(mappedBy = "foodCategories")
        Set<Ingredient> ingredients= new HashSet<>();

        @ManyToMany(mappedBy ="excludedCategories")
        Set<DietaryNeed> dietaryNeeds=new HashSet<>();

}
