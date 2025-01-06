package com.elearning.wave.model.dto;

import java.util.List;

public class QuestionDTO {
    private long questionId;
    private String questionType;
    private String questionText;
    private List<OptionDTO> options;


    public String getQuestionType() { return questionType; }
    public void setQuestionType(String questionType) { this.questionType = questionType; }
    public long getQuestionId() {
        return questionId;
    }
    public void setQuestionId(long questionId) {
        this.questionId = questionId;
    }
    public String getQuestionText() {
        return questionText;
    }
    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }
    public List<OptionDTO> getOptions() {
        return options;
    }
    public void setOptions(List<OptionDTO> options) {
        this.options = options;
    }
}
