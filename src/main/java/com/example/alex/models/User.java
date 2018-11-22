package com.example.alex.models;

import javax.persistence.*;
import java.io.Serializable;


@Entity//эта аннотация говорит сделать Хибернейту таблицу из этого класса
@Table(name="user")
public class User implements Serializable {

    @Id//идентификатор по ид
    @GeneratedValue(strategy = GenerationType.AUTO)//указываем в каком виде и порядке идентификатор будет генерироваться
    private long id;

    @Column(name = "firstName", nullable = false)
    private String firstName;

    @Column(name = "lastName", nullable = false)
    private String lastName;

    @Column(name = "middleName", nullable = false)
    private String middleName;

    @Column(name = "phone_num")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "birthYear")
    private String birthYear;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(String birthYear) {
        this.birthYear = birthYear;
    }
}