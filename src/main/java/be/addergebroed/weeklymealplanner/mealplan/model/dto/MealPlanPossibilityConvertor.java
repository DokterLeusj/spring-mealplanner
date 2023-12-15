package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlanPossibility;

import java.util.List;
import java.util.stream.Collectors;

public class MealPlanPossibilityConvertor {
    public static List<MealPlanPossibilityListDto> convertToListDto(List<MealPlanPossibility> mealplans)
    {return     mealplans.stream()
                .map(MealPlanPossibilityListDto::convertToDto)
                .collect(Collectors.toList());
    }
}
