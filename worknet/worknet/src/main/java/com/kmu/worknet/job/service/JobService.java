package com.kmu.worknet.job.service;

import com.kmu.worknet.job.domain.Job;
import com.kmu.worknet.job.domain.Page;
import com.kmu.worknet.job.domain.SearchWord;

import java.util.List;
import java.util.Map;

public interface JobService {

	public List<Job> selectJobList(Page page) throws Exception;

	public List<Job> selectRecomandJob(int memSeq) throws Exception;

	public Job selectJobDetail(String wantedAuthNo) throws Exception;

	public List<Job> categoryDo(SearchWord allList, Page page) throws Exception;

	public int selectTotalBoard()throws Exception;

	public void updateJobDate(String today) throws Exception;

	public int selectCategoryTotalBoard(SearchWord allList) throws Exception;

	public void updateRecRating(Map<String, Object> map, int memSeq) throws Exception;

	public void insertDetailActivity(String wantedAuthNo, String kind, int memSeq, String searchWord) throws Exception;

	public List<Job> selectJobBaseList(String wantedAuthNo)  throws Exception;

	// 일반공고
	//	public String ratingCheck(Map<String, Object> map, int memSeq); 일반 추천 체크
	//	public void insertRating(Map<String, Object> map, int memSeq) throws Exception; 일반추천 인설트
	//	public void updateRating(Map<String, Object> map, int memSeq) throws Exception; 일반추천 업데이트

	// 공고기반
	//	public String jobBaseRatingCheck(Map<String, Object> map, int memSeq) throws Exception;
	//	public void updateJobBaseRating(Map<String, Object> map, int memSeq) throws Exception; 업데이트
	//	public void insertJobBaseRatingInsert(Map<String, Object> map, int memSeq) throws Exception; 인설트

	// 유저행동 기록
	//	public void insertRatingReviseRating(Map<String, Object> map, int memSeq) throws Exception;
	//	public void insertRatingActivity(Map<String, Object> map, int memSeq) throws Exception;


}
