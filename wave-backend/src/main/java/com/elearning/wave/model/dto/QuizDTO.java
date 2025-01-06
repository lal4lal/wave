package com.elearning.wave.model.dto;

import java.util.List;

public class QuizDTO {
    private long quizId;
    private int rewardPoint;
    private List<QuestionDTO> questionDTO;

    public long getQuizId() {
        return quizId;
    }
    public void setQuizId(long quizId) {
        this.quizId = quizId;
    }
    public int getRewardPoint() {
        return rewardPoint;
    }
    public void setRewardPoint(int rewardPoint) {
        this.rewardPoint = rewardPoint;
    }
    public List<QuestionDTO> getQuestionDTO() {
        return questionDTO;
    }
    public void setQuestionDTO(List<QuestionDTO> questionDTO) {
        this.questionDTO = questionDTO;
    }
}
