package com.elearning.wave.model.dto;

public class SubmissionResponseDTO {
    private int totalScore;
    private boolean pass;

    public int getTotalScore() { return totalScore; }
    public void setTotalScore(int totalScore) { this.totalScore = totalScore; }
    public boolean isPass() { return pass; }
    public void setPass(boolean pass) { this.pass = pass; }
}
