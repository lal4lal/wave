package com.elearning.wave.model.base;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

import java.util.HashSet;
import java.util.List;

@Entity
@DiscriminatorValue("MULTIPLE_CHOICE")
public class MultipleChoice extends Question {

    public MultipleChoice(String questionText, Quiz quiz, List<Options> options, List<CorrectAnswer> correctAnswer) {
        super(questionText, quiz, options, correctAnswer);
    }

    public MultipleChoice() {
    }


    @Override
    public boolean checkAnswer(List<String> userAnswer) {
        System.out.println("checking multiple");
        List<String> correctAnswers = correctAnswer.stream()
                .map(CorrectAnswer::getCorrectAnswer)
                .toList();
        return new HashSet<>(correctAnswers).containsAll(userAnswer) && new HashSet<>(userAnswer).containsAll(correctAnswers);
    }
}
