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
public class RecipeIngredient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column(nullable = false)
    private int qty;

    @Column(nullable = false)
    @ManyToOne
    @JoinColumn(name="unit_id")
    private FoodUnit foodUnit;

    @Column(nullable = false)
@ManyToOne
    @JoinColumn(name="ingredient_id")
    private    Ingredient ingredient;

    @ManyToMany(mappedBy = "recipeIngredients")
    private Set<Recipe> recipes;
}
