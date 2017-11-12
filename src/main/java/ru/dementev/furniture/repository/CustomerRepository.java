package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ru.dementev.furniture.entity.Application;

import java.util.List;

/**
 * Created by adementev on 13.09.2017.
 */
@Repository
public interface CustomerRepository extends JpaRepository<Application, Long> {
    @Query(value = "select c from Application c where c.firstName = :firstName")
    List<Application> findByName(@Param("firstName") String firstName);
}
