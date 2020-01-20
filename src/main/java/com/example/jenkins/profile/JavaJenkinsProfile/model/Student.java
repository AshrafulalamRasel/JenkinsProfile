package com.example.jenkins.profile.JavaJenkinsProfile.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

@Setter
@Getter
@Entity
@Table(name = "STUDENT")
public class Student {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(updatable = false, nullable = false)
    private String id;
    private String name;
    private String department;
    private String section;
    private String subject;
    private String subject_Code;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Teacher> teachers;

    public Student(String name, String department, String section, String subject, String subject_Code) {
        this.name = name;
        this.department = department;
        this.section = section;
        this.subject = subject;
        this.subject_Code = subject_Code;

    }

    public Student() {
    }
}
