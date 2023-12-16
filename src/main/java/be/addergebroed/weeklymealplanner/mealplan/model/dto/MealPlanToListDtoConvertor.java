package be.addergebroed.weeklymealplanner.mealplan.model.dto;

import be.addergebroed.weeklymealplanner.mealplan.model.MealPlan;

import java.util.List;
import java.util.stream.Collectors;

public class MealPlanToListDtoConvertor {
    public static List<MealPlanListDto> convertToListDto(List<MealPlan> mealplans)
    {return     mealplans.stream()
                .map(MealPlanListDto::convertToDto)
                .collect(Collectors.toList());
    }
}
