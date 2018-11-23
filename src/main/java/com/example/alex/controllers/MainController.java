package com.example.alex.controllers;

import com.example.alex.dao.AddressRepo;
import com.example.alex.models.Address;
import com.example.alex.models.User;
import com.example.alex.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
//програмный модуль, который слушает запрос по пути указанному в GetMapping
public class MainController {

    @Autowired
    private UserService userService;
    @Autowired
    private AddressRepo addressRepo;

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
    public void save(@ModelAttribute User user, @ModelAttribute Address address, HttpServletRequest request, HttpServletResponse response) throws IOException {
        addressRepo.save(address);
        user.setAddress(address);
        userService.save(user);
        request.setAttribute("users", userService.findAllUsers());
        request.setAttribute("mode", "USER_VIEW");
        response.sendRedirect("/");
    }

    @GetMapping("/newUser")
    public String createUser(HttpServletRequest request){
        request.setAttribute("user", new User());
        request.setAttribute("address", new Address());
        return "edit";
    }

    @GetMapping("/deleteUser")
    public void deleteUser(@RequestParam long id, HttpServletResponse response) throws IOException{
        userService.delete(id);
        response.sendRedirect("/");
    }
}
