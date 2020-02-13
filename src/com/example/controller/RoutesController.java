package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class RoutesController {
    @GetMapping("/")
    public String index(Model m) {
        m.addAttribute("message", "Hello world!");
        return "index";
    }

    @GetMapping("/login")
    public String login(Model m) {
        m.addAttribute("message", "This is the login page.");
        return "login";
    }
}