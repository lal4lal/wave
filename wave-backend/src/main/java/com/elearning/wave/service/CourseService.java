package com.elearning.wave.service;

import com.elearning.wave.model.dto.CourseDTO;
import com.elearning.wave.model.base.Course;
import com.elearning.wave.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CourseService {

    private final CourseRepository courseRepository;

    @Autowired
    public CourseService(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    public CourseDTO convertEntityToCourseDto(Course course) {
        CourseDTO courseDTO = new CourseDTO();
        courseDTO.setCourseId(course.getId());
        courseDTO.setDescription(course.getDescription());
        courseDTO.setTitle(course.getTitle());

        return courseDTO;
    }

    public List<CourseDTO> getAllCourse() {
        List<Course> courses = courseRepository.findAll();
        if (courses.isEmpty()) {
            throw new IllegalArgumentException("course not found");
        }
        return courses
                .stream()
                .map(this::convertEntityToCourseDto)
                .collect(Collectors.toList());
    }

    public CourseDTO getCourseById(long id) {
        Course course = courseRepository
                .findById(id)
                .orElseThrow(()->new IllegalArgumentException("course not found"));
        return convertEntityToCourseDto(course);
    }

    public Optional<Course> findById(long id) {
        return courseRepository.findById(id);
    }
}
