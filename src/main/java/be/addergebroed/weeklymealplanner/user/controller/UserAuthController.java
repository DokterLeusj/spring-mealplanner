package be.addergebroed.weeklymealplanner.user.controller;

import be.addergebroed.weeklymealplanner.user.model.dto.UserLoginDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserRegistrationDto;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
@CrossOrigin
public class UserAuthController {
    private final UserService userService;
    private final AuthenticationManager authManager;

    @PostMapping("/register")
    public ResponseEntity<String> handleRegisterNewUser(@Valid @RequestBody UserRegistrationDto userDto, BindingResult br) {
        if (br.hasErrors()) {
            throw new IllegalArgumentException("Invalid User registration");
        }
        userService.registerNewUser(userDto);
        return ResponseEntity.ok("you can now log in as " + userDto.email());
    }

    @PostMapping("/login")
    public ResponseEntity<Map<String, String>> handleLogin(@Valid @RequestBody UserLoginDto loginDto, BindingResult br) {
        if (br.hasErrors()) {
            throw new IllegalArgumentException("Invalid user sign in");
        }

        Authentication auth = authManager.authenticate(new UsernamePasswordAuthenticationToken(loginDto.email(), loginDto.password()));

        if (!auth.isAuthenticated()) {
            throw new BadCredentialsException("Invalid credentials");
        }

        return ResponseEntity.ok(Map.of("email", loginDto.email()));
        // in future return json token iso email
    }
}
