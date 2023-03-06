package ru.novitskaya.core.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FirstController {

    @GetMapping("/first")
    public String test(){
        return "hello";
    }
}
