package com.elearning.wave.model.dto;

import java.util.List;

public class QuizSubmitDTO {
    private long userId;
    private long quizId;
    private long courseId;
    private List<UserAnswerDTO> userAnswers;

    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) { this.userId = userId; }
    public long getQuizId() {
        return quizId;
    }
    public void setQuizId(long quizId) {
        this.quizId = quizId;
    }
    public List<UserAnswerDTO> getUserAnswers() {
        return userAnswers;
    }
    public void setUserAnswerS(List<UserAnswerDTO> userAnswers) {
        this.userAnswers = userAnswers;
    }
    public long getCourseId() { return courseId; }
    public void setCourseId(long courseId) { this.courseId = courseId; }
    public void setUserAnswers(List<UserAnswerDTO> userAnswers) { this.userAnswers = userAnswers; }
}
