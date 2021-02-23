package com.kmu.worknet.job.rating.domain;

import com.kmu.worknet.job.rating.service.Assessment;
import com.kmu.worknet.job.rating.service.Evaluation;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class UserBasedEvaluationImpl implements Evaluation {

    private final RatingRepository ratingRepository;

    @Override
    public boolean validation(Assessment assessment) {
        if (!ratingRepository.selectExistWantedAuthNo(assessment)) {
            throw new NullPointerException();
        }
        return ratingRepository.userBaseRatingCheck(assessment);
    }

    @Override
    public void insertRating(Assessment assessment) {
        ratingRepository.updateRecRating(assessment);
        ratingRepository.insertRatingActivity(assessment);
    }

    @Override
    public void updateRating(Assessment assessment) {
        ratingRepository.updateRecRating(assessment);
        ratingRepository.insertRatingReviseRating(assessment);
    }


}
