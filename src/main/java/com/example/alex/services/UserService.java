package com.example.alex.services;

import com.example.alex.dao.UserRepo;
import com.example.alex.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepo;

    public Collection<User> findAllUsers(){
        List<User> users = new ArrayList<>();
        for (User user : userRepo.findAll()){
            users.add(user);
        }
        return users;
    }
}
