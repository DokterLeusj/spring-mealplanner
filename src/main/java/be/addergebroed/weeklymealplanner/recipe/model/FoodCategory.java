package be.addergebroed.weeklymealplanner.recipe.model;

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
public class FoodCategory {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        Long Id;

        @Column(nullable = false)
        int name;

        @Column(nullable = false)
        boolean allergen;

        @ManyToMany(mappedBy = "categories")
                @Column(nullable = true)
        Set<Ingredient> ingredients;
}
