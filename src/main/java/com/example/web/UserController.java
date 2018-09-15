package com.example.web;


import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

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
//        List<User> users = userService.findAll();
//        model.addAttribute("users",users);
        return new ModelAndView("users", params);
    }
}
