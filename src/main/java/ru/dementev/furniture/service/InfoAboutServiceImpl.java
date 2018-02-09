package ru.dementev.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.dementev.furniture.entity.InfoAbout;
import ru.dementev.furniture.repository.InfoAboutRepository;

import java.util.List;

/**
 * Created by Антон Дементьев on 17.11.2017.
 */
@Service
public class InfoAboutServiceImpl implements InfoAboutService {

    @Autowired
    private InfoAboutRepository repository;

    @Override
    public List<InfoAbout> getAll() {
        return repository.findAll();
    }

    @Override
    public InfoAbout getById(long id) {
        return repository.findOne(id);
    }

    @Override
    public InfoAbout set(InfoAbout infoAbout) {
        return repository.saveAndFlush(infoAbout);
    }

    @Override
    public String remove(long id) {
        repository.delete(id);
        return "Запись удалена";
    }
}
