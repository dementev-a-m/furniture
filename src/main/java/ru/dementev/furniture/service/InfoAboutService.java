package ru.dementev.furniture.service;

import ru.dementev.furniture.entity.InfoAbout;

import java.util.List;

/**
 * Created by Антон Дементьев on 17.11.2017.
 */
public interface InfoAboutService {
    public List<InfoAbout> getAll();
    public InfoAbout getById(long id);
    public InfoAbout set(InfoAbout infoAbout);
    public String remove(long id);

}
