package ru.dementev.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.dementev.furniture.entity.Role;

/**
 * Created by adementev on 26.10.2017.
 */
public interface RoleRepository extends JpaRepository <Role,Long> {
}
