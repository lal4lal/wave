package com.elearning.wave.model.base;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import java.util.List;

@Entity
@DiscriminatorValue("SINGLE_CHOICE")
public class SingleChoice extends Question {

    public SingleChoice(String questionText, Quiz quiz, List<Options> options, List<CorrectAnswer> correctAnswer) {
        super(questionText, quiz, options, correctAnswer);
    }

    public SingleChoice() {
    }

    @Override
    public boolean checkAnswer(List<String> userAnswer) {
        System.out.println("checking single");
        if (userAnswer.size() != 1) {
            return false;
        }
        return correctAnswer.getFirst().getCorrectAnswer().equals(userAnswer.getFirst());
    }
}