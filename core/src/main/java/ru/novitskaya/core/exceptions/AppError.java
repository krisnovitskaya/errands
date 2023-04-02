package ru.novitskaya.core.exceptions;

public class AppError {
    private String code;
    private String message;

    public AppError(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return "AppError{" +
                "code='" + code + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
