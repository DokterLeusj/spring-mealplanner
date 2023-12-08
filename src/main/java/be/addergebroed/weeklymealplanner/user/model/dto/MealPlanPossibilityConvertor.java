package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.MealPlanPossibility;

import java.util.List;
import java.util.stream.Collectors;

public class MealPlanPossibilityConvertor {
    public static List<MealPlanPossibilityListDto> convertToListDto(List<MealPlanPossibility> mealplans)
    {return     mealplans.stream()
                .map(MealPlanPossibilityListDto::convertToDto)
                .collect(Collectors.toList());
    }
}
