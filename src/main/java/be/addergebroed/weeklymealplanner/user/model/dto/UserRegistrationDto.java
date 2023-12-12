package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;


public record UserRegistrationDto(
        String email,
        String password) {

}
