package be.addergebroed.weeklymealplanner.security;

import be.addergebroed.weeklymealplanner.user.model.User;
import lombok.Getter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
@Getter
public class UserDetailsImpl implements UserDetails {
    private final User user;
    private final Set<GrantedAuthority> auths = new HashSet<>();

    public UserDetailsImpl (User user){
        this.user = user;
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return auths;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public static User getUser(Authentication auth){
return        ((UserDetailsImpl) auth.getPrincipal()).getUser();
    }

}
