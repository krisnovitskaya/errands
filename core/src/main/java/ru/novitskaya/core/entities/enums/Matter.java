package ru.novitskaya.core.entities.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Matter {
    LOCAL("Местная"),
    PRIVATE("Личный вопрос");

    private final String label;
}
