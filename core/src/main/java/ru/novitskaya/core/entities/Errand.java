package ru.novitskaya.core.entities;

import jakarta.persistence.*;
import lombok.*;
import ru.novitskaya.core.entities.enums.Matter;
import ru.novitskaya.core.entities.enums.Status;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "errands")
public class Errand {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "status")
    @Enumerated(EnumType.STRING)
    private Status status;

    @Column(name = "matter")
    @Enumerated(EnumType.STRING)
    private Matter matter;

    @ManyToOne
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @Column(name = "date_start")
    private LocalDateTime dateStart;

    @Column(name = "date_end")
    private LocalDateTime dateEnd;

    @Column(name = "place")
    private String place;

    @ManyToOne
    @JoinColumn(name = "created_by")
    private Employee createdBy;

    @ManyToOne
    @JoinColumn(name = "confirmed_or_rejected_by")
    private Employee confirmedOrRejectedBy;

}
