package com.example.jenkins.profile.JavaJenkinsProfile.services;

import com.example.jenkins.profile.JavaJenkinsProfile.model.Student;
import com.example.jenkins.profile.JavaJenkinsProfile.model.Teacher;
import com.example.jenkins.profile.JavaJenkinsProfile.repository.StudentRepository;
import com.example.jenkins.profile.JavaJenkinsProfile.repository.TeacherRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@AllArgsConstructor
@Service
public class TeacherService {
    private final TeacherRepository teacherRepository;
    private final StudentRepository studentRepository;

    public void saveMyTeacher(Teacher teacher) {
        teacherRepository.save(teacher);
    }

    public Teacher findByUsernameAndPassword(String username, String password) {
        return teacherRepository.findByEmailAndPassword(username, password);
    }

    public void saveMyStudent(Student student) {
        List<Teacher> t = new ArrayList<>();

        for (Teacher g : teacherRepository.findAll()) {
            t.add(g);
        }

        student.setTeachers(t);
        studentRepository.save(student);

    }

    public List<Student> showmyStudents() {
        List<Student> students = new ArrayList<Student>();
        for (Student student : studentRepository.findAll()) {
            students.add(student);
        }
        return students;
    }

    public List<Teacher> teac() {
        List<Teacher> teacherList = new ArrayList<Teacher>();
        for (Teacher teacher : teacherRepository.findAll()) {
            teacherList.add(teacher);
        }
        return teacherList;
    }

}
