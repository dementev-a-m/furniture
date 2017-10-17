package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.dementev.furniture.entity.Image;

/**
 * Created by adementev on 16.10.2017.
 */
@Repository
public interface ImageRepository extends JpaRepository<Image,Long> {
}
