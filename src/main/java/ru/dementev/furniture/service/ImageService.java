package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Image;

/**
 * Created by adementev on 16.10.2017.
 */

public interface ImageService {
    Image getById(long id);

    Image set(Image image);

    String remove(long id);
}
