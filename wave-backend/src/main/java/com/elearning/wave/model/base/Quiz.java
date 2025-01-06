package com.elearning.wave.model.base;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "quiz")
public class Quiz extends BaseEntity {
    @Column(name = "reward_point")
    private int rewardPoint;
    @OneToOne
    @JoinColumn(name = "module_id")
    private Module modules;
    @OneToMany(mappedBy = "quiz")
    private List<Question> question;

    public Quiz(int rewardPoint, Module modules, List<Question> question) {
        this.rewardPoint = rewardPoint;
        this.modules = modules;
        this.question = question;
    }

    public Quiz() {
    }

    @Override
    public void displayInfo() {
        System.out.println("Quiz Reward Points: " + rewardPoint);
        System.out.println("Module Title: " + (modules != null ? modules.getTitle() : "No Module"));
        System.out.println("Number of Questions: " + (question != null ? question.size() : 0));
    }


    public int getRewardPoint() { return rewardPoint; }
    public void setRewardPoint(int rewardPoint) { this.rewardPoint = rewardPoint; }
    public Module getModule() { return modules; }
    public void setModule(Module module) { this.modules = module; }
    public List<Question> getQuestion() { return question; }
    public void setQuestion(List<Question> question) { this.question = question; }
}

