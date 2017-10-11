package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Product;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
public interface ProductService {
    public List<Product> getAll();
    public Product getById(long id);
    public Product set(Product product);
    public String remove(long id);

}
