package com.kmu.worknet.job.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kmu.worknet.job.domain.Job;
import com.kmu.worknet.job.domain.Page;
import com.kmu.worknet.job.domain.SearchWord;

@Mapper
public interface mapper {

	public List<Job> selectJobList(Page page) throws Exception;

	public List<Job> selectRecomandJob(int memSeq) throws Exception;

	public Job selectJobDetail(String wantedAuthNo) throws Exception;

	public List<Job> categoryDo(@Param("allList") SearchWord allList, @Param("page") Page page) throws Exception;

	public int selectTotalBoard() throws Exception;

	public void updateJobDate(String today) throws Exception;

	public int selectCategoryTotalBoard(@Param("allList") SearchWord allList) throws Exception;

	public void insertRating(@Param("map") Map<String, Object> map,@Param("memSeq") int memSeq, @Param("time")  String time) throws Exception;

	public void updateRecRating(@Param("map") Map<String, Object> map,@Param("memSeq") int memSeq) throws Exception;

	public String ratingCheck(@Param("map") Map<String, Object> map, @Param("memSeq")int memSeq);

	public void updateRating(Map<String, Object> map, int memSeq, @Param("time") String time) throws Exception;

	public void insertRatingActivity(Map<String, Object> map, int memSeq) throws Exception;

	public void insertRatingReviseRating(Map<String, Object> map, int memSeq) throws Exception;

	public void insertDetailActivity(String wantedAuthNo, String kind, int memSeq, String searchWord) throws Exception;
	
	public List<Job> selectJobBaseList(String wantedAuthNo) throws Exception;

	public String jobBaseRatingCheck(Map<String, Object> map, int memSeq) throws Exception;

	public void insertJobBaseRatingInsert(Map<String, Object> map, int memSeq, @Param("time") String time) throws Exception;

	public void updateJobBaseRating(Map<String, Object> map, int memSeq, @Param("time") String time) throws Exception;

	
}

