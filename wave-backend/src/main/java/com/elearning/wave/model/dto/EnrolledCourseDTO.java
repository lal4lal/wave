package com.elearning.wave.model.dto;

public class EnrolledCourseDTO {
    private int totalPointEarned;
    private CourseDTO courseDTO;

    public int getTotalPointEarned() {
        return totalPointEarned;
    }
    public void setTotalPointEarned(int totalPointEarned) {
        this.totalPointEarned = totalPointEarned;
    }
    public CourseDTO getCourseDTO() {
        return courseDTO;
    }
    public void setCourseDTO(CourseDTO courseDTO) {
        this.courseDTO = courseDTO;
    }
}
