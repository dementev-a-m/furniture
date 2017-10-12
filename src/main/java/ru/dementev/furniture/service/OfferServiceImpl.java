package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.Offer;
import ru.dementev.furniture.repository.OfferRepository;

import java.util.List;

@Service
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository repository;

    @Override
    public List<Offer> getAll() {
        return repository.findAll();
    }

    @Override
    public Offer getById(long id) {
        return repository.findOne(id);
    }

    @Override
    public Offer set(Offer offer) {
        return repository.save(offer);
    }

    @Override
    public String remove(long id) {
        repository.delete(id);
        return "Запись удалена!";
    }

    @Override
    public List<Offer> getByActive() {
        return null;//repository.findByActiveIsTrue();
    }
}
