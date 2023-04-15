package ru.novitskaya.core.entities.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Status {
    REQUESTED("Запрошена"),
    CONFIRMED("Подтверждена"),
    REJECTED("Отклонена");

    private final String label;
}
