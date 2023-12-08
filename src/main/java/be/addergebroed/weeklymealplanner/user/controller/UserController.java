package be.addergebroed.weeklymealplanner.user.controller;


import be.addergebroed.weeklymealplanner.customModelMapper.CustomModelMapper;
import be.addergebroed.weeklymealplanner.user.model.dto.UserDto;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/user")
@RequiredArgsConstructor
@CrossOrigin
public class UserController {
    private final UserService userService;
    private final CustomModelMapper modelMapper;

    @GetMapping("/{id}")
    public UserDto handleGetUserById(@PathVariable Long id){
        return modelMapper.map(userService.fetchUserById(id),UserDto.class);
    }

    @GetMapping
    public List<UserDto> handleGetAllUsers(){
        return modelMapper.mapList(userService.fetchAllUsers(),UserDto.class);
    }
}
