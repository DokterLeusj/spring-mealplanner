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
public class Ingredient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long Id;

    @Column(nullable = false, unique = true)
    String name;

    @ManyToMany
    @JoinTable(name = "ingredient_category",
            joinColumns = @JoinColumn(name = "ingredient_id",nullable = false),
            inverseJoinColumns = @JoinColumn(name = "food_category_id",nullable = false))
    Set<FoodCategory> foodCategories;

    @OneToMany(mappedBy="ingredient")
    Set<RecipeIngredient> recipeIngredients;

}
