package com.elearning.wave.model.dto;

import java.util.List;

public class UserAnswerDTO {
    private long questionId;
    private String questionType;
    private List<OptionDTO> optionDTOS;

    public long getQuestionId() { return questionId; }
    public void setQuestionId(long questionId) { this.questionId = questionId; }
    public List<OptionDTO> getOptionDTOS() { return optionDTOS; }
    public void setOptionDTOS(List<OptionDTO> optionDTOS) { this.optionDTOS = optionDTOS; }
    public String getQuestionType() { return questionType; }
    public void setQuestionType(String questionType) { this.questionType = questionType; }
}
