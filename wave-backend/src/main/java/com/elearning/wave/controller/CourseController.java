package com.elearning.wave.controller;

import com.elearning.wave.model.dto.CourseDTO;
import com.elearning.wave.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/courses")
@CrossOrigin
public class CourseController {

    private final CourseService courseService;

    @Autowired
    public CourseController(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<CourseDTO>> getAllCourse() {
        try {
            List<CourseDTO> courseDTOS = courseService.getAllCourse();
            return new ResponseEntity<>(courseDTOS, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<CourseDTO> getCourseById(@PathVariable long id) {
        try {
            CourseDTO courseDTO = courseService.getCourseById(id);
            return new ResponseEntity<>(courseDTO, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
        }
    }
}