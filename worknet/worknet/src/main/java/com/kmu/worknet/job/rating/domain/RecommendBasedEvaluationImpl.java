package com.kmu.worknet.job.rating.domain;

import com.kmu.worknet.job.rating.service.Assessment;
import com.kmu.worknet.job.rating.service.Evaluation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.MethodArgumentNotValidException;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

@RequiredArgsConstructor
public class RecommendBasedEvaluationImpl implements Evaluation {

    private final RatingRepository ratingRepository;
    @Override
    public boolean checkExistRating(Assessment assessment) {
        return ratingRepository.jobBaseRatingCheck(assessment) == 0;
    }

    @Override
    public void insertRating(Assessment assessment) {
        ratingRepository.insertJobBaseRatingInsert(assessment, Long.toString(System.currentTimeMillis()));
        ratingRepository.insertRatingActivity(assessment);
    }

    @Override
    public void updateRating(Assessment assessment) {
        ratingRepository.updateJobBaseRating(assessment,Long.toString(System.currentTimeMillis()));
        ratingRepository.insertRatingReviseRating(assessment);
    }

}
