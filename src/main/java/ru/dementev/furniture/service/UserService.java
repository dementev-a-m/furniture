package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.User;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
public interface UserService {
    User getUser(String login);
}
