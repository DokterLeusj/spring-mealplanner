package be.addergebroed.weeklymealplanner.user.model;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(unique = true,nullable = false)
    private String email;

    @Column(nullable = true)
    private String imgUrl;

    @ManyToOne
    @JoinColumn(name = "plan_preference_id", nullable = true)
    private PlanPreference planPreference;

    @OneToMany(mappedBy = "author")
    private List<Recipe> recipes;

}
