package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
public class Users extends BaseEntity {
    private String fullname;
    private String email;
    private String password;
    @OneToMany(mappedBy = "users")
    private List<EnrolledCourse> enrolledCourses;

    public Users(String fullname, String email, String password, List<EnrolledCourse> enrolledCourses) {
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.enrolledCourses = enrolledCourses;
    }

    public Users() {
    }

    @Override
    public void displayInfo() {
        System.out.println("Fullname: " + fullname);
        System.out.println("Email: " + email);
    }


    public String getFullname() {
        return fullname;
    }
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    public List<EnrolledCourse> getEnrolledCourses() {
        return enrolledCourses;
    }
    public void setEnrolledCourses(List<EnrolledCourse> enrolledCourses) {
        this.enrolledCourses = enrolledCourses;
    }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
