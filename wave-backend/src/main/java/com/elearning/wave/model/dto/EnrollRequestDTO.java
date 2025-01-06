package com.elearning.wave.model.dto;

public class EnrollRequestDTO {
    private long courseId;
    private long userId;

    public long getCourseId() {
        return courseId;
    }
    public void setCourseId(long courseId) {
        this.courseId = courseId;
    }
    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
}
