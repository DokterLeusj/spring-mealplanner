package be.addergebroed.weeklymealplanner.recipe.controller;

import be.addergebroed.weeklymealplanner.recipe.model.Ingredient;
import be.addergebroed.weeklymealplanner.recipe.model.dto.IngredientListDto;
import be.addergebroed.weeklymealplanner.recipe.service.IngredientService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/ingredient")
@RequiredArgsConstructor
@CrossOrigin
public class IngredientController {
    private final IngredientService ingredientService;
    @GetMapping("")
    public List<IngredientListDto> handleGetAllIngredients(){
        List<Ingredient> allIngredients = ingredientService.fetchAllIngredients();
        return allIngredients.stream()
                .map(IngredientListDto::convertToDto)
                .collect(Collectors.toList());
    }
}
