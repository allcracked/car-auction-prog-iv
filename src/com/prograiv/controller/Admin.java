package com.prograiv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Admin {
    @GetMapping("/admin")
    public String admin(Model model) {
        return "admin/index";
    }

    @GetMapping("/users")
    public String users() {
        return "admin/users";
    }
}
