package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

import java.util.Set;
import java.util.stream.Collectors;

public record DietaryNeedDto(Long id, String name) {
    public static DietaryNeedDto convertToDto(DietaryNeed dietaryNeed) {
        return new DietaryNeedDto(
                dietaryNeed.getId(),
                dietaryNeed.getName()
        );
    }
    public static Set<Long> convertToIds(Set<DietaryNeed> dietaryNeeds) {
        return dietaryNeeds.stream()
                .map(DietaryNeedDto::convertToDto)
                .map(DietaryNeedDto::id)
                .collect(Collectors.toSet())
                ;
    }

}
