package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.Offer;
import ru.dementev.furniture.repository.OfferRepository;

import java.util.List;

@Service
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository repository;

    @Override
    @Cacheable(value = "offers",sync = true)
    public List<Offer> getAll() {
        return repository.findAll();
    }

    @Override
    public Offer getById(long id) {
        return repository.findOne(id);
    }

    @Override
    @CachePut(value = "offers")
    public Offer set(Offer offer) {
        return repository.saveAndFlush(offer);
    }

    @Override
    @CacheEvict(value = "offers", allEntries = true)
    public String remove(long id) {
        repository.delete(id);
        return "Запись удалена!";
    }

    @Override
    @Cacheable("offers")
    public List<Offer> getByActive() {
        return repository.findByActiveIsTrue();
    }
}
