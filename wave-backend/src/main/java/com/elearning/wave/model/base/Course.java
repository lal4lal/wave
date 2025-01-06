package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "course")
public class Course extends BaseEntity {
    private String title;
    @Column(length = 1000)
    private String description;
    @OneToMany(mappedBy = "course")
    private List<Module> modules;
    @OneToMany(mappedBy = "course")
    private List<EnrolledCourse> enrolledCourse;

    public Course(String title, String description, List<Module> modules, List<EnrolledCourse> enrolledCourse) {
        this.title = title;
        this.description = description;
        this.modules = modules;
        this.enrolledCourse = enrolledCourse;
    }

    public Course() {
    }

    @Override
    public void displayInfo() {
        System.out.println("Course Title: " + title);
        System.out.println("Course Description: " + description);
    }


    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public List<Module> getModules() { return modules; }
    public void setModules(List<Module> modules) { this.modules = modules; }
}
