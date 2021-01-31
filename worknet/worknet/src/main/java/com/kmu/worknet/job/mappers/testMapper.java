package com.kmu.worknet.job.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kmu.worknet.job.domain.testDomain;

@Mapper
public interface testMapper {
	public List<testDomain> findByMovieList(int memSeq) throws Exception;
	public testDomain findBySelectOne(int movieId) throws Exception;
	
}
