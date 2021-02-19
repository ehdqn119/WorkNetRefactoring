package com.kmu.worknet.job.rating.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RatingService {

    private final RatingFactory ratingFactory;

    public void jobRating(Assessment assessment){
        ratingFactory.getEvaluation(assessment).evaluate(assessment);
    }
}
