package ru.novitskaya.core.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Collection;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "employees")
public class Employee{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "middle_name")
    private String middleName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;

    @ManyToOne(optional = false)
    @JoinColumn(name = "position_id")
    private Position position;

    @ManyToOne(optional = false)
    @JoinColumn(name = "department_id")
    private Department department;

    @OneToOne(optional = false)
    @JoinColumn(name = "user_id")
    private User user;


    @ManyToMany
    @JoinTable(name = "subordinate_departments",
            joinColumns = @JoinColumn(name = "employee_id"),
            inverseJoinColumns = @JoinColumn(name = "department_id"))
    private Collection<Department> subordinateDepartments;
}
