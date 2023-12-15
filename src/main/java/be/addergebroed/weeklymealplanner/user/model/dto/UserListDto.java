package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;

public record UserListDto(Long id,
                          String username,
                          String imgUrl) {
    public static UserListDto convertToDto(User user){
        return new UserListDto(
                user.getId(),
                user.getUsername(),
                user.getImgUrl()
        );
    }
}
