package com.elearning.wave.controller;

import com.elearning.wave.model.dto.ModuleDTO;
import com.elearning.wave.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/courses")
@CrossOrigin
public class ModuleController {

    private final ModuleService moduleService;

    @Autowired
    public ModuleController(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    @GetMapping("/{courseId}/modules")
    public ResponseEntity<List<ModuleDTO>> getModulesOnSpecifiedCourse(@PathVariable long courseId) {
        try {
            List<ModuleDTO> moduleDTOS = moduleService.getModulesOnSpecifiedCourse(courseId);
            return new ResponseEntity<>(moduleDTOS, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/users/{userId}/courses/{courseId}/modules/{moduleId}")
    public ResponseEntity<ModuleDTO> getModuleByIdOnSpecifiedCourse(
            @PathVariable long userId,
            @PathVariable long courseId,
            @PathVariable long moduleId) {
        try {
            ModuleDTO moduleDTO = moduleService.getModuleByIdOnSpecifiedCourse(userId, courseId, moduleId);
            return new ResponseEntity<>(moduleDTO, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

}
