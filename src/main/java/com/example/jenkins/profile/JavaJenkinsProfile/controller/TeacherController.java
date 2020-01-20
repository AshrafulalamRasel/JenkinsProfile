package com.example.jenkins.profile.JavaJenkinsProfile.controller;

import com.example.jenkins.profile.JavaJenkinsProfile.model.Student;
import com.example.jenkins.profile.JavaJenkinsProfile.model.Teacher;
import com.example.jenkins.profile.JavaJenkinsProfile.services.TeacherService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@AllArgsConstructor
@Controller
public class TeacherController {

    private final TeacherService teacherService;


    @GetMapping("/")
    public String registation() {
        return "Registration";
    }


    @GetMapping("/registration.html")
    public String logintoregistrationpage() {
        return "Registration";
    }

    @GetMapping("/login.html")
    public String registrationtolginpage() {
        return "Login";
    }

    @PostMapping("/teacher_registation")
    public String registerUser(@ModelAttribute Teacher teacher, BindingResult bindingResult, HttpServletRequest request) {
        teacherService.saveMyTeacher(teacher);
        return "Login";
    }

    @RequestMapping("/login_teacher")
    public String loginUser(@ModelAttribute Teacher teacher, HttpServletRequest request) {
        if (teacherService.findByUsernameAndPassword(teacher.getEmail(), teacher.getPassword()) != null) {
            request.setAttribute("students", teacherService.showmyStudents());
            return "Attendance";
        } else {
            request.setAttribute("error", "Invalid Username or Password");
            return "Login";

        }
    }

    @PostMapping("/savebookingn")
    public String dsfdssdfsd(@ModelAttribute Student student, BindingResult bindingResult, HttpServletRequest request, HttpServletResponse response) {

        teacherService.saveMyStudent(student);
        return "Login";
    }

    @GetMapping("/adminpage")
    public String adminList(HttpServletRequest request) {
        request.setAttribute("teacherList", teacherService.teac());
        return "Admin";
    }
}
