package be.addergebroed.weeklymealplanner.user.model.dto;

import be.addergebroed.weeklymealplanner.user.model.User;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

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
    public static Map<String,String> getMap(UserListDto userListDto){
        Map<String,String> map=new HashMap<>();
        for(Field field : userListDto.getClass().getDeclaredFields()){
            field.setAccessible(true);
            try {
                map.put(field.getName(),field.get(userListDto).toString());
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }
        return map;
    }
}
