package com.kmu.worknet.job.rating.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class RatingService{

    private final RatingFactory ratingFactory;
    // 998395287
    @Transactional
    public void jobRating(Assessment assessment){
        Evaluation evaluation = ratingFactory.getEvaluation(assessment);
        evaluation.evaluate(assessment);
    }
}
