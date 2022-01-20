package com.example.springmvchandlebars;

import com.example.springmvchandlebars.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    UserRepository userRepository = new UserRepository();

    @GetMapping("/form")
    public String form(Model model) {

        return "form";
    }

    @PostMapping("/list")
    public String createUser(@RequestParam("name") String name,
                             @RequestParam("email") String email,
                             Model model) {
        userRepository.createUser(new User(name,email));
        model.addAttribute("users", userRepository.users);

        return "list";
    }
}
