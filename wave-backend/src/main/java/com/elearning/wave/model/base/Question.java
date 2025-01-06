package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE) 
@DiscriminatorColumn(name = "question_type", discriminatorType = DiscriminatorType.STRING)
public abstract class Question extends BaseEntity {
    @Column(name = "question_text")
    protected String questionText;
    @ManyToOne
    @JoinColumn(name = "quiz_id")
    private Quiz quiz;
    @OneToMany(mappedBy = "question")
    protected List<Options> options;
    @OneToMany(mappedBy = "question")
    protected List<CorrectAnswer> correctAnswer;

    public Question(String questionText, Quiz quiz, List<Options> options, List<CorrectAnswer> correctAnswer) {
        this.questionText = questionText;
        this.quiz = quiz;
        this.options = options;
        this.correctAnswer = correctAnswer;
    }

    public Question() {
    }

    @Override
    public void displayInfo() {
        System.out.println("Question: " + questionText);
        System.out.println("Question Type: " + getQuestionType());
        System.out.println("Number of Options: " + (options != null ? options.size() : 0));
        System.out.println("Number of Correct Answers: " + (correctAnswer != null ? correctAnswer.size() : 0));
    }


    public abstract boolean checkAnswer(List<String> userAnswer);
    public String getQuestionText() { return questionText; }
    public void setQuestionText(String questionText) { this.questionText = questionText; }
    public Quiz getQuiz() { return quiz; }
    public void setQuiz(Quiz quiz) { this.quiz = quiz; }
    public List<Options> getOptions() { return options; }
    public void setOptions(List<Options> options) { this.options = options; }
    public List<CorrectAnswer> getCorrectAnswer() { return correctAnswer; }
    public void setCorrectAnswer(List<CorrectAnswer> correctAnswer) { this.correctAnswer = correctAnswer; }
    public String getQuestionType() {
        if (this instanceof MultipleChoice) {
            return "MULTIPLE_CHOICE";
        } else if (this instanceof SingleChoice) {
            return "SINGLE_CHOICE";
        }
        return "Unknown";
    }
}
