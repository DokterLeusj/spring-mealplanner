package be.addergebroed.weeklymealplanner.controllerconfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ControllerConfig {
    @Bean
    public ModdelMapper modelMapper(){
        return new ModdelMapper();
    }

}
