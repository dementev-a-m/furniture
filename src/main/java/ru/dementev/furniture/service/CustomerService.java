package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Application;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
public interface CustomerService {
    public List<Application> getAll();
    public Application getById(long id);
    public Application set(Application application);
    public String remove(long id);
    public List<Application> getByName(String findByName);

}
