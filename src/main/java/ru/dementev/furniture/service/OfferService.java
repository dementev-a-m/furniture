package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Offer;

import java.util.List;

/**
 * Created by adementev on 11.10.2017.
 */
public interface OfferService {
    List<Offer> getAll();

    Offer getById(long id);

    Offer set(Offer offer);

    String remove(long id);

    List<Offer> getByActive();
}
