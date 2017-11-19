package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.dementev.furniture.entity.InfoAbout;

/**
 * Created by Антон Дементьев on 17.11.2017.
 */
@Repository
public interface InfoAboutRepository extends JpaRepository<InfoAbout, Long> {
}
