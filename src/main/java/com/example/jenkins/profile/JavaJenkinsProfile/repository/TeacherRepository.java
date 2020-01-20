package com.example.jenkins.profile.JavaJenkinsProfile.repository;

import com.example.jenkins.profile.JavaJenkinsProfile.model.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherRepository extends JpaRepository<Teacher, String> {
    public Teacher findByEmailAndPassword(String name, String password);


    List<Teacher> findAllById(String fsdsd);
}
