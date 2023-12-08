package be.addergebroed.weeklymealplanner.user.controller;


import be.addergebroed.weeklymealplanner.user.model.dto.UserDto;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/user")
@RequiredArgsConstructor
@CrossOrigin
public class UserController {
    private final UserService userService;

    @GetMapping("/{id}")
    public UserDto handleGetUserById(@PathVariable Long id){
        return UserDto.convertToDto(userService.fetchUserById(id));
    }

    @GetMapping
    public List<UserDto> handleGetAllUsers(){
        return userService.fetchAllUsers().stream()
                .map(u -> UserDto.convertToDto(u))
                .collect(Collectors.toList());
    }
}