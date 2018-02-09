package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.InfoAbout;

import java.util.List;

/**
 * Created by Антон Дементьев on 17.11.2017.
 */
public interface InfoAboutService {
    List<InfoAbout> getAll();

    InfoAbout getById(long id);

    InfoAbout set(InfoAbout infoAbout);

    String remove(long id);

}
