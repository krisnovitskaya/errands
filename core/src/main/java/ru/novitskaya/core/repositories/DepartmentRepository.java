package ru.novitskaya.core.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.novitskaya.core.entities.Department;

public interface DepartmentRepository extends JpaRepository<Department, Long> {
}
