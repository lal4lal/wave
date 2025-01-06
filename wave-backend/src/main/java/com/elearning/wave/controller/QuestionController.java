package com.elearning.wave.controller;

import com.elearning.wave.model.dto.QuestionDTO;
import com.elearning.wave.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/quiz")
@CrossOrigin
public class QuestionController {
    private final QuestionService questionService;

    @Autowired
    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping("/{quizId}/question")
    public ResponseEntity<List<QuestionDTO>> getAllQuestionOnSpecifiedQuiz(@PathVariable long quizId) {
        try {
            List<QuestionDTO> questionDTOS = questionService.getAllQuestionOnSpecifiedQuiz(quizId);
            return new ResponseEntity<>(questionDTOS, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/{quizId}/question/{questionId}")
    public ResponseEntity<QuestionDTO> getQuestionByIdOnSpecifiedQuiz(@PathVariable long quizId, @PathVariable long questionId) {
        try {
            QuestionDTO questionDTO = questionService.getQuestionByIdOnSpecifiedQuiz(quizId, questionId);
            return new ResponseEntity<>(questionDTO, HttpStatus.FOUND);
        } catch (Exception e) {
            return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
        }
    }


}
