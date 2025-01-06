package com.elearning.wave.model.base;

import jakarta.persistence.*;

@Entity
@Table(name = "correct_answers")
public class CorrectAnswer extends BaseEntity {
    @Column(name = "correct_answer")
    private String correctAnswer;
    @ManyToOne
    @JoinColumn(name = "question_id")
    private Question question;

    public CorrectAnswer(String correctAnswer, Question question) {
        this.correctAnswer = correctAnswer;
        this.question = question;
    }

    public CorrectAnswer() {
    }

    @Override
    public void displayInfo() {
        System.out.println("Correct Answer: " + getCorrectAnswer());
        if (getQuestion() != null) {
            System.out.println("Associated Question: " + getQuestion().getQuestionText());
        } else {
            System.out.println("No associated question.");
        }
    }

    public String getCorrectAnswer() { return correctAnswer; }
    public void setCorrectAnswer(String correctAnswer) { this.correctAnswer = correctAnswer; }
    public Question getQuestion() { return question; }
    public void setQuestion(Question question) { this.question = question; }
}
