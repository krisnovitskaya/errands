package ru.novitskaya.core.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "departments")
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "title")
    private String title;

    @OneToOne
    @JoinColumn(name = "master_department_id", referencedColumnName = "id")
    private Department masterDepartment;

    @OneToMany
    @JoinColumn(name = "department_id")
    private List<Employee> employees;

}