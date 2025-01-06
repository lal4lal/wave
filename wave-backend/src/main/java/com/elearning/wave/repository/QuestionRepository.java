package com.elearning.wave.repository;

import com.elearning.wave.model.base.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
    Optional<List<Question>> findByQuizId(long quizId);
    Optional<Question> findByQuizIdAndId(long quizId, long questionId);
}
