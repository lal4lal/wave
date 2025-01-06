package com.elearning.wave.repository;

import com.elearning.wave.model.base.Module;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ModuleRepository extends JpaRepository<Module, Long> {
    Optional<Module> findByCourseIdAndId(long courseId, long moduleId);
    Optional<List<Module>> findByCourseId(long courseId);
}
