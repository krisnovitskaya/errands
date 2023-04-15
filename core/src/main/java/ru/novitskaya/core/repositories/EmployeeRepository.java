package ru.novitskaya.core.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.novitskaya.core.entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
