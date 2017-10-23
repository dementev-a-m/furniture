package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.User;
import ru.dementev.furniture.repository.UserRepository;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository repository;
    @Override
    public User getUser(String login) {
        return repository.findOne(login);
    }
}
