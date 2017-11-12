package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.Application;
import ru.dementev.furniture.repository.CustomerRepository;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository repository;

    public List<Application> getAll() {
        return repository.findAll();
    }

    public Application getById(long id) {
        return repository.findOne(id);
    }

    public Application set(Application application) {
        return repository.saveAndFlush(application);
    }

    public String remove(long id) {
        repository.delete(id);
        return "Запись удалена";
    }

    public List<Application> getByName(String firstName) {
        return repository.findByName(firstName);
    }
}
