package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Customer;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
public interface CustomerService {
    public List<Customer> getAll();
    public Customer getById(long id);
    public Customer set(Customer customer);
    public String remove(long id);
    public List<Customer> getByName(String findByName);

}
