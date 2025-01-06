package com.elearning.wave.controller;

import com.elearning.wave.model.dto.QuizDTO;
import com.elearning.wave.model.dto.QuizSubmitDTO;
import com.elearning.wave.model.dto.SubmissionResponseDTO;
import com.elearning.wave.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/modules")
@CrossOrigin
public class QuizController {
    private final QuizService quizService ;

    @Autowired
    public QuizController(QuizService quizService) {
        this.quizService = quizService;
    }

    @GetMapping("/{moduleId}/quiz")
    public ResponseEntity<QuizDTO> getQuizOnSpecifiedModule(@PathVariable long moduleId) {
        try {
            QuizDTO quizDTO = quizService.getQuizOnSpecifiedModule(moduleId);
            return new ResponseEntity<>(quizDTO, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
        }
    }
    @PostMapping("/quiz/submit")
    public SubmissionResponseDTO submitQuiz(@RequestBody QuizSubmitDTO quizSubmitDTO) {
        return quizService.checkUserSubmission(quizSubmitDTO);
    }
}
