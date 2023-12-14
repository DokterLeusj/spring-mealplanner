package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.model.dto.UserListDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserLoginDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;
import be.addergebroed.weeklymealplanner.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    //C
    User registerNewUser(UserRegistrationDto user);
    //R
    List<UserListDto> fetchAllUsers(boolean hasRecipes);
    User fetchUserById(Long id);

    //U
    //D


}
