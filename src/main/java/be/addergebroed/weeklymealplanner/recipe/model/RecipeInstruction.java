package be.addergebroed.weeklymealplanner.recipe.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RecipeInstruction {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        Long id;
        @Column(nullable = false)
        int step;
        @Column(nullable = false)
        String instruction;

        @ManyToOne
        @JoinColumn(name = "recipe_id", nullable = false)
        Recipe recipe;
    }

