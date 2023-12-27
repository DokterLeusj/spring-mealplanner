package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.model.dto.UserListDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;

import java.util.List;


public interface UserService {
    //C
    User addNewUser(UserRegistrationDto user);


    //R
    List<UserListDto> fetchAllUsers(Boolean hasRecipes);
    User fetchUserById(Long id);



    //U
    //D


}
