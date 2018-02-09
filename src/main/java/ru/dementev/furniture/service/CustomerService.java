package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Application;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
public interface CustomerService {
    List<Application> getAll();

    Application getById(long id);

    Application set(Application application);

    String remove(long id);

    List<Application> getByName(String findByName);

}
