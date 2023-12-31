package be.addergebroed.weeklymealplanner.user.controller;


import be.addergebroed.weeklymealplanner.user.model.dto.UserListDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserPlanDto;
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

    @GetMapping("/{id}")
    public UserListDto handleGetUserById(@PathVariable Long id) {
        return UserListDto.convertToDto(userService.fetchUserById(id));
    }

    @GetMapping("")
    public List<UserListDto> handleGetAllUsers(
            @RequestParam(required = false) Boolean hasRecipes
    ) {
        return userService.fetchAllUsers(hasRecipes);
    }

    @GetMapping("/{id}/settings/plan")
    public UserPlanDto handleGetUserPlanSettings(@PathVariable Long id) {
        return UserPlanDto.convertToDto(userService.fetchUserById(id));
    }

}
