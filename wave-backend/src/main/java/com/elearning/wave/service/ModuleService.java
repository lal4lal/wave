package com.elearning.wave.service;

import com.elearning.wave.model.dto.ModuleDTO;
import com.elearning.wave.model.base.Module;
import com.elearning.wave.model.base.EnrolledCourse;
import com.elearning.wave.repository.ModuleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ModuleService {

    private final ModuleRepository moduleRepository;
    private final EnrolledCourseService enrolledCourseService;

    @Autowired
    public ModuleService(ModuleRepository moduleRepository, EnrolledCourseService enrolledCourseService) {
        this.moduleRepository = moduleRepository;
        this.enrolledCourseService = enrolledCourseService;
    }

    public ModuleDTO convertEntityToModuleDto(Module module) {
        ModuleDTO moduleDTO = new ModuleDTO();
        moduleDTO.setModuleId(module.getId());
        moduleDTO.setTitle(module.getTitle());
        moduleDTO.setContent(module.getContent());
        moduleDTO.setDescription(module.getDescription());

        return moduleDTO;
    }

    public ModuleDTO getModuleByIdOnSpecifiedCourse(long userId, long courseId, long moduleId) {
        EnrolledCourse enrolledCourse = enrolledCourseService.getEnrollCourseByCourseAndUser(userId, courseId);

        Module module = moduleRepository
                .findByCourseIdAndId(courseId, moduleId)
                .orElseThrow(() -> new IllegalArgumentException("Module not found"));

        if (enrolledCourse.hasAccessedModule(moduleId)) {
            return convertEntityToModuleDto(module);
        }

        if (enrolledCourse.getTotalPointEarned() < Module.getPointRequired()) {
            throw new IllegalStateException("Not enough points to access this module");
        }

        enrolledCourse.setTotalPointEarned(enrolledCourse.getTotalPointEarned() - Module.getPointRequired());
        enrolledCourse.grantAccessToModule(moduleId);
        enrolledCourseService.saveUpdate(enrolledCourse);

        return convertEntityToModuleDto(module);
    }

    public List<ModuleDTO> getModulesOnSpecifiedCourse(long courseId) {
        List<Module> module = moduleRepository
                .findByCourseId(courseId)
                .orElseThrow(()->new IllegalArgumentException("module not found"));
        return module
                .stream()
                .map(this::convertEntityToModuleDto)
                .collect(Collectors.toList());
    }
}
