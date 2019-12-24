package com.example.jenkins.profile.JavaJenkinsProfile.repository;

import com.example.jenkins.profile.JavaJenkinsProfile.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
}
