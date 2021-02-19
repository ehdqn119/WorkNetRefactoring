package com.kmu.worknet.job.rating.domain;

import com.kmu.worknet.job.rating.service.Assessment;
import com.kmu.worknet.job.rating.service.Evaluation;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
public class GeneralEvaluationImpl implements Evaluation {
    private final RatingRepository ratingRepository;

    @Override
    public boolean checkExistRating( Assessment assessment) {
        return ratingRepository.ratingCheck(assessment) == 0;
    }

    @Override
    public void insertRating(Assessment assessment) {
        ratingRepository.insertRating(assessment,Long.toString(System.currentTimeMillis()));
        ratingRepository.insertRatingActivity(assessment);
    }

    @Override
    public void updateRating(Assessment assessment) {
        ratingRepository.updateRating(assessment,Long.toString(System.currentTimeMillis()));
        ratingRepository.insertRatingReviseRating(assessment);
    }

}
