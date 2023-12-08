package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    //C
    //R
    List<User> fetchAllUsers();
    User fetchUserById(Long id);

    //U
    //D


}
