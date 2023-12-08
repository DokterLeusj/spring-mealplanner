package be.addergebroed.weeklymealplanner.customModelMapper;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class CustomModelMapper extends ModelMapper {
    public <S,T> List<T> mapList(List<S> source, Class<T> targetClass){
        return source
                .stream()
                .map(element -> map(element,targetClass))
                .toList();
    }


    public <S,T> Set<T> mapSet(Set<S> source, Class<T> targetClass){
        return source
                .stream()
                .map(element -> map(element,targetClass))
                .collect(Collectors.toSet());
    }
}
