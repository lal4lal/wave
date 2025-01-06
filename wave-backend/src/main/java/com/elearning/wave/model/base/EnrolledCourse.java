package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;
import java.util.ArrayList;

@Entity
@Table(name = "enrolled_course")
public class EnrolledCourse extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "user_id")
    private Users users;
    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
    private int totalPointEarned;
    @ElementCollection
    private List<Long> accessedModules = new ArrayList<>();

    public EnrolledCourse(Users users, Course course, int totalPointEarned, List<Long> accessedModules) {
        this.users = users;
        this.course = course;
        this.totalPointEarned = totalPointEarned;
        this.accessedModules = accessedModules;
    }

    public EnrolledCourse() {
    }

    @Override
    public void displayInfo() {
        System.out.println("User: " + (users != null ? users.getFullname() : "Unknown"));
        System.out.println("Course: " + (course != null ? course.getTitle() : "No Course Assigned"));
        System.out.println("Total Points Earned: " + totalPointEarned);
    }

    public boolean hasAccessedModule(long moduleId) {
        return accessedModules.contains(moduleId);
    }
    public void grantAccessToModule(long moduleId) {
        accessedModules.add(moduleId);
    }
    public Users getUsers() { return users; }
    public void setUsers(Users users) { this.users = users; }
    public Course getCourse() { return course; }
    public void setCourse(Course course) { this.course = course; }
    public int getTotalPointEarned() { return totalPointEarned; }
    public void setTotalPointEarned(int totalPointEarned) { this.totalPointEarned = totalPointEarned;}
}
