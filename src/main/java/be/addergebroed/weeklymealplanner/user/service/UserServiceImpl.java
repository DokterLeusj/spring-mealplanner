package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.recipe.model.Recipe;
import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.model.dto.UserListDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserLoginDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;
import be.addergebroed.weeklymealplanner.user.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepo;
    private final PasswordEncoder passwordEncoder;
    @Override
    public User addNewUser(UserRegistrationDto user) {
        if (userRepo.findByEmail(user.email()).isPresent()){
            throw new IllegalArgumentException("A user with email " + user.email() + " already exist. Can not create new user");
        }
        User newUser = User.builder()
                .email(user.email())
                .password(passwordEncoder.encode(user.password()))
                .build();
        return userRepo.save(newUser);
    }

    @Override
    public List<UserListDto> fetchAllUsers(Boolean hasRecipes) {
        return userRepo.findAllBy(hasRecipes).stream()
                .map(UserListDto::convertToDto).toList();
    }

    @Override
    public User fetchUserById(Long id) {
        if (id==null){
            throw new IllegalArgumentException("Id can not be null");
        }
        return userRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("Could not find user with id " + id));
    }




}
