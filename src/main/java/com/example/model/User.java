package com.example.model;

import org.springframework.stereotype.Component;

import javax.persistence.*;

@Entity
@Table(name ="users")
public class User {
    public User() {
    }

    @Id

    @GeneratedValue(strategy = GenerationType.AUTO)
    private String id;

    @Column(name = "username")
    private String login;

    @Column(name = "first_name")
    private String name;

    @Column(name = "last_name")
    private String lastname;

    @Column(name = "email")
    private String email;

    public User(String login, String name, String lastname, String email) {
        this.login = login;
        this.name = name;
        this.lastname = lastname;
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", login='" + login + '\'' +
                ", name='" + name + '\'' +
                ", lastname='" + lastname + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
