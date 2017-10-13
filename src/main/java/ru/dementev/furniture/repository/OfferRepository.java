package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.dementev.furniture.entity.Offer;

import java.util.List;

/**
 * Created by adementev on 11.10.2017.
 */
@Repository
public interface OfferRepository extends JpaRepository<Offer,Long>{
    List<Offer> findByActiveIsTrue();
}
