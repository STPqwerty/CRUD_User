package com.example.alex.controllers;

import com.example.alex.models.User;
import com.example.alex.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
    public void save(@ModelAttribute User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        userService.save(user);
        request.setAttribute("users", userService.findAllUsers());
        request.setAttribute("mode", "USER_VIEW");
        response.sendRedirect("/");
    }

    @GetMapping("/newUser")
    public String createUser(HttpServletRequest request){
        request.setAttribute("user", new User());
        return "edit";
    }

    @GetMapping("/deleteUser")
    public void deleteUser(@RequestParam long id, HttpServletRequest request, HttpServletResponse response) throws IOException{
        userService.delete(id);
        response.sendRedirect("/");
    }
}
