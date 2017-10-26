package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dementev.furniture.entity.User;

/**
 * Created by Антон Дементьев on 23.10.2017.
 */
public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);
}
