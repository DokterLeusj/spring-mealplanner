package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;

public record UserNameDto(Long id, String username) {
    public static UserNameDto convertToDto(User user) {
        return new UserNameDto(
                user.getId(),
                user.getUsername()
        );
    }
}
