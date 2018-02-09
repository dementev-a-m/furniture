package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.Image;
import ru.dementev.furniture.repository.ImageRepository;

/**
 * Created by adementev on 16.10.2017.
 */
@Service
public class ImageServiceImpl implements ImageService {
    @Autowired
    private ImageRepository repository;

    @Override
    @Cacheable(value = "image", sync = true)
    public Image getById(long id) {
        return repository.findOne(id);
    }

    @Override
    @CachePut(value = "image")
    public Image set(Image image) {
        return repository.saveAndFlush(image);
    }

    @Override
    @CacheEvict(value = "image", allEntries = true)
    public String remove(long id) {
        repository.delete(id);
        return "Запись удалена";
    }
}
