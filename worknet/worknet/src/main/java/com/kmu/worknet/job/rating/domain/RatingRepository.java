package com.kmu.worknet.job.rating.domain;

import com.kmu.worknet.job.rating.service.Assessment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.MethodArgumentNotValidException;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Map;

@Mapper
public interface RatingRepository {

    // 일반 게시물 (카테고리 검색, 최신 게시물 별점) 대한
    public int ratingCheck(Assessment assessment);// 기존 별점 존재여부
    public void insertRating(Assessment assessment, @Param("time")  String time);// 별점 추가
    public void updateRating(Assessment assessment, @Param("time") String time);// 별점 수정

    // 게시물 기반 추천 게시물 대한
    public int jobBaseRatingCheck(Assessment assessment);// 기존 별점 존재여부
    public void insertJobBaseRatingInsert(Assessment assessment, @Param("time") String time);// 별점 추가
    public void updateJobBaseRating(Assessment assessment, @Param("time") String time);// 별점 수정

    // 유저 기반 추천 게시물에 대한
    public int userBaseRatingCheck(Assessment assessment);// 별점 체크
    public void updateRecRating(Assessment assessment);// 별점 수정

    // 게시물에 별점을 수정 또는 삽입하였는지 구분하여 행동을 기록
    public void insertRatingActivity(Assessment assessment) ;// 별점 추가에 대한 행동 기록
    public void insertRatingReviseRating(Assessment assessment);// 별점 수정에 대한 행동 기록
}
