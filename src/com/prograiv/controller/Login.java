package com.prograiv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Login {
    @GetMapping("/login")
    public String login(Model m) {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST, consumes = "application/x-www-form-urlencoded")
    public String login(Model model, @RequestParam(value = "name") String email, @RequestParam(value = "password") String pass) {
        model.addAttribute("email", email);
        model.addAttribute("pass", pass);
        model.addAttribute("checked", checkUser(email, pass));
        if (checkUser(email, pass)) {
            model.addAttribute("loginError", "Credenciales correctas.");
            return "admin/index";
        } else {
            model.addAttribute("loginError", "Las credenciales no son correctas.");
            return "login";
        }
    }

    private boolean checkUser(String email, String pass) {
        if (email.equals(new String("jose@unitec.edu")) && pass.equals(new String("admin"))) {
            return  true;
        } else {
            return false;
        }
    }
}