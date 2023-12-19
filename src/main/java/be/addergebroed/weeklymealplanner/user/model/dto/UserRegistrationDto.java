package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;


public record UserRegistrationDto(

        String email,

        String password) {

    public static UserRegistrationDto convertToDto(User user) {
        return new UserRegistrationDto(
                user.getEmail(),
                user.getUsername()
        );
    }

}
