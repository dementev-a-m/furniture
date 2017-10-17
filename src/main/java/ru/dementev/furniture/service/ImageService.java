package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.Image;

/**
 * Created by adementev on 16.10.2017.
 */

public interface ImageService {
    public Image getById(long id);
    public Image set(Image image);
    public String remove(long id);
}
