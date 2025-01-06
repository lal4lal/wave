package com.elearning.wave.model.dto;

public class UserDTO {
    private long userId;
    private String fullname;
    private String email;

    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }
    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}
