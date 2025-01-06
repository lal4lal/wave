package com.elearning.wave.repository;

import com.elearning.wave.model.base.CorrectAnswer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CorrectAnswerRepository extends JpaRepository<CorrectAnswer, Long> {
    Optional<CorrectAnswer> findByQuestionId(long questionId);
}
