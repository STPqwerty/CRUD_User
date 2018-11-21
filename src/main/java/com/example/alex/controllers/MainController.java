package com.example.alex.controllers;

import com.example.alex.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String init(HttpServletRequest request){
        request.setAttribute("users", userService.findAllUsers());
        return "index";
    }
}
