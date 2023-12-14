package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

public record DietaryNeedDto(Long id, String name) {
    public static DietaryNeedDto convertToDto(DietaryNeed dietaryNeed) {
        return new DietaryNeedDto(
                dietaryNeed.getId(),
                dietaryNeed.getName()
        );
    }
}
