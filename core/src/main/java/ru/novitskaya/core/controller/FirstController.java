package ru.novitskaya.core.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
public class FirstController {

    @GetMapping("/first")
    public String test(){
        return "hello";
    }

    @GetMapping("/secured")
    public String secured(Principal principal){
        String name = principal.getName();
        return "ok!";
    }
}
