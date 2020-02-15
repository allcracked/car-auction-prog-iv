package com.prograiv.controller;

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

    @GetMapping("/favicon.ico")
    String favicon() {
        return "forward:/rsc/images/favicon.ico";
    }
}