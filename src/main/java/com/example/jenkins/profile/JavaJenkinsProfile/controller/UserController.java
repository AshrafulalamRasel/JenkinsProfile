package com.example.jenkins.profile.JavaJenkinsProfile.controller;

import com.example.jenkins.profile.JavaJenkinsProfile.model.User;
import com.example.jenkins.profile.JavaJenkinsProfile.services.Userservice;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
public class UserController {

    private final Userservice userservice;


    @PostMapping("/user_registation")
    public String userSignup(@ModelAttribute User userRequest) {
        userservice.createUser(userRequest);
        return "Success";
    }

    @RequestMapping("/signup")
    public String registation() {
        return "Registration";
    }

}
