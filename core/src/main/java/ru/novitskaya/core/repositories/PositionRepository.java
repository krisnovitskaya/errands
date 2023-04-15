package ru.novitskaya.core.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.novitskaya.core.entities.Position;

public interface PositionRepository extends JpaRepository<Position, Long> {
}
