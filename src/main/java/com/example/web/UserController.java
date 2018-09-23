package com.example.web;


import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(path="/users")
    public ModelAndView getUsers(){
        Map<String,Object> params = new HashMap<>();
        params.put("users",userService.findAll());
        return new ModelAndView("users", params);
    }

    @GetMapping(path = "/update/{id}")
    public ModelAndView update(@PathVariable(name = "id") String id){
        User user = userService.findById(id).orElseThrow(() -> new RuntimeException("User not found with ID: " + id));
        Map<String,Object> params = new HashMap<>();
        params.put("user", user);
        return new ModelAndView("update-user", params);
    }

    @PostMapping(path = "/update-user/{id}")
    public ModelAndView doUpdate(User user, @PathVariable String id){
        User foundUser = userService.findById(id).orElseThrow(()->new RuntimeException("User  not found"));
        foundUser.setEmail(user.getEmail());
        foundUser.setName(user.getName());
        foundUser.setLastname(user.getLastname());
        userService.save(foundUser);
        Map<String,Object> params = new HashMap<>();
        params.put("message","User was successfully updated.");
        params.put("users",userService.findAll());
        return new ModelAndView("users",params);
    }

    @GetMapping(path = "/delete/{id}")
    public ModelAndView doDelete(User user, @PathVariable String id){
        User foundUser = userService.findById(id).orElseThrow(()->new RuntimeException("User  not found"));
        userService.delete(foundUser);
        Map<String,Object> params = new HashMap<>();
        params.put("message","User was successfully deleted.");
        params.put("users",userService.findAll());
        return new ModelAndView("users",params);
    }

    @GetMapping("/user-register")
    public String registerForm(Model model) {
        model.addAttribute("user", new User());
        return "user-register";
    }
    @PostMapping("/user-register")
    public String registerSubmit(@ModelAttribute User user) {
        userService.save(user);
        return "redirect:/users";
    }
    @GetMapping("/")
    public String getHome() {
        return "home";
    }




}
