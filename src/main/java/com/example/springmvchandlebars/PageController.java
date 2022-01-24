package com.example.springmvchandlebars;

import com.example.springmvchandlebars.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    UserRepository userRepository = new UserRepository();

    @GetMapping("/form")
    public String form(Model model) {
        model.addAttribute("user", new User("", ""));
        return "form";
    }

    @PostMapping("/list")
    public String createUser(@ModelAttribute User user, Model model) {
        userRepository.createUser(user);
        model.addAttribute("users", userRepository.users);
        return "list";
    }
}



