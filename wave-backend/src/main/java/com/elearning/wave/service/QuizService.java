package com.elearning.wave.service;

import com.elearning.wave.model.base.*;
import com.elearning.wave.model.dto.*;
import com.elearning.wave.repository.CorrectAnswerRepository;
import com.elearning.wave.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class QuizService {
    private final QuizRepository quizRepository;
    private final QuestionService questionService;
    private final EnrolledCourseService enrolledCourseService;


    @Autowired
    public QuizService(QuizRepository quizRepository,
                       QuestionService questionService,
                       EnrolledCourseService enrolledCourseService) {
        this.quizRepository = quizRepository;
        this.questionService = questionService;
        this.enrolledCourseService = enrolledCourseService;

    }

    public QuizDTO convertEntityToQuizDto(Quiz quiz) {
        QuizDTO quizDTO = new QuizDTO();
        quizDTO.setQuizId(quiz.getId());
        quizDTO.setRewardPoint(quiz.getRewardPoint());
        quizDTO.setQuestionDTO(quiz.getQuestion()
                .stream()
                .map(questionService::convertEntityToQuestionDto)
                .collect(Collectors.toList()));

        return quizDTO;
    }

    public QuizDTO getQuizOnSpecifiedModule(long moduleId) {
        Quiz quiz = quizRepository
                .findByModulesId(moduleId)
                .orElseThrow(()->new IllegalArgumentException("quiz not found"));
        return convertEntityToQuizDto(quiz);
    }

    public SubmissionResponseDTO checkUserSubmission(QuizSubmitDTO quizSubmitDTO) {
        List<UserAnswerDTO> userAnswerDTOS = quizSubmitDTO.getUserAnswers();
        int totalScore = 0;
        for (UserAnswerDTO userAnswerDTO: userAnswerDTOS) {
            Question question = questionService.getQuestionById(userAnswerDTO.getQuestionId());
            List<String> userAnswers = userAnswerDTO.getOptionDTOS().stream()
                    .map(OptionDTO::getOptions)
                    .collect(Collectors.toList());
            boolean isCorrect = question.checkAnswer(userAnswers);
            System.out.println(userAnswerDTO.getQuestionId() + " " + isCorrect);
            if (isCorrect) {
                totalScore += 2;
            }
        }
        SubmissionResponseDTO submissionResponseDTO = new SubmissionResponseDTO();
        EnrolledCourse enrolledCourse = enrolledCourseService
                .getEnrollCourseByCourseAndUser(quizSubmitDTO.getUserId(), quizSubmitDTO.getCourseId());
        submissionResponseDTO.setTotalScore(totalScore);
        if (totalScore < 10) {
            submissionResponseDTO.setPass(false);
        } else {
            submissionResponseDTO.setPass(true);
            enrolledCourse.setTotalPointEarned(10);
            enrolledCourseService.saveUpdate(enrolledCourse);
        }
        return submissionResponseDTO;
    }
}
