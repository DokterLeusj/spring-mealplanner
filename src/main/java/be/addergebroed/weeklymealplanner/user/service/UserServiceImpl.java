package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.user.model.User;
import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;
import be.addergebroed.weeklymealplanner.user.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepo;
    @Override
    public User registerNewUser(UserRegistrationDto user) {
        if (userRepo.findByEmail(user.email()).isPresent()){
            throw new IllegalArgumentException("Email " + user.email() + " is alreay in use. Please use new ");
        }

        User newUser = User.builder()
                .email(user.email())
                .username(user.email())
                .password(user.password())
                .build();

        return userRepo.save(newUser);
    }



    @Override
    public List<User> fetchAllUsers() {
        return userRepo.findAll();
    }

    @Override
    public User fetchUserById(Long id) {
        if (id==null){
            throw new IllegalArgumentException("Id can not be null");
        }
        return userRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("Could not find user with id " + id));
    }
}
