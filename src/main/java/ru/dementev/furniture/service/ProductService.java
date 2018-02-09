package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Product;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
public interface ProductService {
    List<Product> getAll();

    Product getById(long id);

    Product set(Product product);

    String remove(long id);

}
