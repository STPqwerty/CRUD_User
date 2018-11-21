package com.example.alex.controllers;

import com.example.alex.models.User;
import com.example.alex.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RestController
public class MainRestController {

    @Autowired
    private UserService userService;

    @GetMapping("/findAllUsers")
    public Collection<User> getAllUsers(){
        return userService.findAllUsers();
    }

    @GetMapping("/delete")
    public void deleteUser(@RequestParam long id){
        userService.delete(id);
    }
}
