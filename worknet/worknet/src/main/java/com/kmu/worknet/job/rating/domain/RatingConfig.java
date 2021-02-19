package com.kmu.worknet.job.rating.domain;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class RatingConfig {

    private final RatingRepository ratingRepository;

    @Bean({"1","4"})
    public GeneralEvaluationImpl addGeneralService(){
        return new GeneralEvaluationImpl(ratingRepository);
    }

    @Bean({"3"})
    public RecommendBasedEvaluationImpl addRecommendBasedService(){
        return new RecommendBasedEvaluationImpl(ratingRepository);
    }

    @Bean({"2"})
    public UserBasedEvaluationImpl addUserBasedService(){
        return new UserBasedEvaluationImpl(ratingRepository);
    }
}

