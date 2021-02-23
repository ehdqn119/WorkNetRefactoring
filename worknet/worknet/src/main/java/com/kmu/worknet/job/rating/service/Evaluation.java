package com.kmu.worknet.job.rating.service;

public interface Evaluation {

    boolean validation(Assessment assessment);
    void insertRating(Assessment assessment);
    void updateRating(Assessment assessment) ;

    default void evaluate(Assessment assessment){
        if (validation(assessment)) {
            insertRating(assessment);
            return;
        }
        updateRating(assessment);
    }
}
