package com.elearning.wave.service;

import com.elearning.wave.model.dto.OptionDTO;
import com.elearning.wave.model.dto.QuestionDTO;
import com.elearning.wave.model.base.Options;
import com.elearning.wave.model.base.Question;
import com.elearning.wave.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    private final QuestionRepository questionRepository; 

    @Autowired 
    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public OptionDTO convertEntityToOptionDto(Options options) {
        OptionDTO optionDTO = new OptionDTO();
        optionDTO.setOptionId(options.getId());
        optionDTO.setOptions(options.getOptions());

        return optionDTO;
    }

    public QuestionDTO convertEntityToQuestionDto(Question question) {
        QuestionDTO questionDTO = new QuestionDTO();
        questionDTO.setQuestionId(question.getId());
        questionDTO.setQuestionType(question.getQuestionType());
        questionDTO.setQuestionText(question.getQuestionText());
        questionDTO.setOptions(question.getOptions()
                .stream()
                .map(this::convertEntityToOptionDto)
                .collect(Collectors.toList()));

        return questionDTO;
    }

    public List<QuestionDTO> getAllQuestionOnSpecifiedQuiz(long quizId) {
        List<Question> question = questionRepository
                .findByQuizId(quizId)
                .orElseThrow(()-> new IllegalArgumentException("question not found"));
        System.out.println(question);
        return question
                .stream()
                .map(this::convertEntityToQuestionDto)
                .collect(Collectors.toList());
    }

    public QuestionDTO getQuestionByIdOnSpecifiedQuiz(long quizId, long questionId) {
        Question question = questionRepository
                .findByQuizIdAndId(quizId, questionId)
                .orElseThrow(()-> new IllegalArgumentException("question not found"));
        return convertEntityToQuestionDto(question);
    }

    public Question getQuestionById(long questionId) {
        return questionRepository.findById(questionId)
                .orElseThrow(() -> new IllegalArgumentException("Question not found"));
    }
}
