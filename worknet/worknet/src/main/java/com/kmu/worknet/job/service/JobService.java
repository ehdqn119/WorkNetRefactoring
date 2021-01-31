package com.kmu.worknet.job.service;

import java.util.List;
import java.util.Map;

import com.kmu.worknet.job.domain.Job;
import com.kmu.worknet.job.domain.Page;
import com.kmu.worknet.job.domain.SearchWord;

public interface JobService {

	////////////////////////////////////////////////////////////////////////

	public List<Job> selectJobList(Page page) throws Exception;

	public List<Job> selectRecomandJob(int memSeq) throws Exception;

	public Job selectJobDetail(String wantedAuthNo) throws Exception;

	public List<Job> categoryDo(SearchWord allList, Page page) throws Exception;

	public int selectToalBoard()throws Exception;

	public void updateJobDate(String today) throws Exception;

	public int selectCategoryTotalBoard(SearchWord allList) throws Exception;

	public void insertRating(Map<String, Object> map, int memSeq) throws Exception;

	public void updateRecRating(Map<String, Object> map, int memSeq) throws Exception;

	public String ratingCheck(Map<String, Object> map, int memSeq);

	public void updateRating(Map<String, Object> map, int memSeq) throws Exception;
/////////////////////////////////////////////////////////////////////////
	public void insertRatingActivity(Map<String, Object> map, int memSeq) throws Exception;

	public void insertRatingReviseRating(Map<String, Object> map, int memSeq) throws Exception;

	public void insertDetailActivity(String wantedAuthNo, String kind, int memSeq, String searchWord) throws Exception;

	public List<Job> selectJobBaseList(String wantedAuthNo)  throws Exception;

	public String jobBaseRatingCheck(Map<String, Object> map, int memSeq) throws Exception;

	public void insertJobBaseRatingInsert(Map<String, Object> map, int memSeq) throws Exception;

	public void updateJobBaseRating(Map<String, Object> map, int memSeq) throws Exception;
}
