package com.example.alex.controllers;

import com.example.alex.models.User;
import com.example.alex.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String init(HttpServletRequest request){
        request.setAttribute("users", userService.findAllUsers());
        request.setAttribute("mode", "USER_VIEW");
        return "index";
    }

    @GetMapping("/updateUser")
    public String init(@RequestParam long id, HttpServletRequest request){
        request.setAttribute("user", userService.findOne(id));
        return "edit";
    }

    @GetMapping("/save")
    public String save(@ModelAttribute User user, HttpServletRequest request){
        userService.save(user);
        request.setAttribute("users", userService.findAllUsers());
        request.setAttribute("mode", "USER_VIEW");
        return "index";
    }
}
