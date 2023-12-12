package be.addergebroed.weeklymealplanner.user.controller;

import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
@CrossOrigin
public class UserAuthController {
    private final UserService userService;
    private final AuthenticationManager authManager;

    @PostMapping("/register")
    public ResponseEntity<String> handleRegisterNewUser(@Valid @RequestBody UserRegistrationDto userDto, BindingResult br){
        if (br.hasErrors()) {
            throw new IllegalArgumentException("Invalid User registration");
        }
        userService.registerNewUser(userDto);
        return ResponseEntity.ok("you can now log in as " + userDto.email());
    }
}
