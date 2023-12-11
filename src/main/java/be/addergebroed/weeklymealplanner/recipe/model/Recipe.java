package be.addergebroed.weeklymealplanner.recipe.model;

import be.addergebroed.weeklymealplanner.user.model.User;
import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = true)
    String name;

    @Column(nullable = true)
    String description;
    @Column(nullable = true)
    String imgUrl;

    @Column(nullable = true)
    boolean nutriTech;

    @ManyToMany()
    @JoinTable(name = "recipe_recipe_ingredient",
            joinColumns = @JoinColumn(name = "recipe_id"),
            inverseJoinColumns = @JoinColumn(name = "recipe_ingredient_id"))
    Set<RecipeIngredient> recipeIngredients;

    @ManyToOne
    @JoinColumn(name = "author_id", nullable = false)
    User author;

    @OneToMany(mappedBy = "recipe")
   Set <RecipeInstruction> instructions=new HashSet<>();
}
