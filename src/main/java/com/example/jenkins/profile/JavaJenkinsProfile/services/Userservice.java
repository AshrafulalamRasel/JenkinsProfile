package com.example.jenkins.profile.JavaJenkinsProfile.services;


import com.example.jenkins.profile.JavaJenkinsProfile.model.User;
import com.example.jenkins.profile.JavaJenkinsProfile.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@AllArgsConstructor
@Service
public class Userservice {
    private final UserRepository userRepository;

    public void createUser(User userRequest) {

        userRepository.saveAndFlush(userRequest);


    }
}
