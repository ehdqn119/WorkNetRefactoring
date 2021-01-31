package com.kmu.worknet.job.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class testDomain {
	
	//ratings.csv
	private int memSeq;
	private int movieId;
	private String rating;
	private String timestamp;
	
	//movies.csv
	//movieId 중복
	private String title;
	private String genres;
	
}
