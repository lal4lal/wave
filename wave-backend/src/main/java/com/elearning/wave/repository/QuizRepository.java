package com.elearning.wave.repository;

import com.elearning.wave.model.base.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface QuizRepository extends JpaRepository<Quiz, Long> {
    Optional<Quiz> findByModulesId(long moduleId);
}
