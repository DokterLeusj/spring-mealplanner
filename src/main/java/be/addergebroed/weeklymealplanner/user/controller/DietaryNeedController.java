package be.addergebroed.weeklymealplanner.user.controller;


import be.addergebroed.weeklymealplanner.user.model.dto.DietaryNeedDto;
import be.addergebroed.weeklymealplanner.user.model.dto.UserDto;
import be.addergebroed.weeklymealplanner.user.service.DietaryNeedService;
import be.addergebroed.weeklymealplanner.user.service.DietaryNeedServiceImpl;
import be.addergebroed.weeklymealplanner.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/diet")
@RequiredArgsConstructor
@CrossOrigin
public class DietaryNeedController {
    private final DietaryNeedService dietaryNeedService;

    @GetMapping("")
    public List<DietaryNeedDto> handleGetAllNeeds(){
        return dietaryNeedService.fetchAllNeeds().stream()
                .map(DietaryNeedDto::convertToDto)
                .collect(Collectors.toList());
    }
}
