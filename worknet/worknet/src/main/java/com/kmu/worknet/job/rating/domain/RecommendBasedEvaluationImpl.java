package com.kmu.worknet.job.rating.domain;

import com.kmu.worknet.job.rating.service.Assessment;
import com.kmu.worknet.job.rating.service.Evaluation;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class RecommendBasedEvaluationImpl implements Evaluation {

    private final RatingRepository ratingRepository;

    @Override
    public boolean validation(Assessment assessment) {
        if (!ratingRepository.selectExistWantedAuthNo(assessment)){
            throw new IllegalArgumentException();
        }
        return !ratingRepository.jobBaseRatingCheck(assessment);
    }

    @Override
    public void insertRating(Assessment assessment) {
        ratingRepository.insertJobBaseRatingInsert(assessment, Long.toString(System.currentTimeMillis()));
        ratingRepository.insertRatingActivity(assessment);
    }

    @Override
    public void updateRating(Assessment assessment) {
        ratingRepository.insertRatingReviseRating(assessment);
        ratingRepository.updateJobBaseRating(assessment, Long.toString(System.currentTimeMillis()));
    }



}
