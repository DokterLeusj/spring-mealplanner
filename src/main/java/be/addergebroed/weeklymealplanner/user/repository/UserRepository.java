package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> findByUsername(String username);
    Optional<User> findByEmail(String email);


    @Query("SELECT DISTINCT u FROM User u " +
            "LEFT JOIN u.authoredRecipes r " +
            "WHERE (:hasRecipes IS null " +
            "   OR (:hasRecipes = TRUE AND SIZE(u.authoredRecipes) > 0)" +
            "       or (:hasRecipes=false and size(u.authoredRecipes)=0) )"
    )
    List<User> findAllBy(
            @Param("hasRecipes") Boolean hasRecipes
    );
}
