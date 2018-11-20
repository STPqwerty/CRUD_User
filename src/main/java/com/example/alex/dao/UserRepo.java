package com.example.alex.dao;

import com.example.alex.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
}
