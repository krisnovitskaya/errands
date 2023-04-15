package ru.novitskaya.core.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.novitskaya.core.entities.Errand;

public interface ErrandRepository extends JpaRepository<Errand, Long> {
}
