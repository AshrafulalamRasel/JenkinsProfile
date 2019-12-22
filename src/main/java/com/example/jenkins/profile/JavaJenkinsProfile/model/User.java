package com.example.jenkins.profile.JavaJenkinsProfile.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Setter
@Getter
@Entity
@Table(name = "User")
public class User {

    @Id
    private String id;
    private String name;
}
