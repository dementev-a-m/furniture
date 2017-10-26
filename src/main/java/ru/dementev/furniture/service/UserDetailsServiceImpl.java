package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.Role;
import ru.dementev.furniture.entity.User;
import ru.dementev.furniture.entity.enums.UserRoleEnum;
import ru.dementev.furniture.repository.RoleRepository;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userService.findByUsername(username);
        Set<GrantedAuthority> roles = new HashSet<>();
        for(Role role: user.getRoles()){
            roles.add(new SimpleGrantedAuthority(role.getName()));
        }

        UserDetails userDetails = new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), roles);
        return userDetails;
    }
}
