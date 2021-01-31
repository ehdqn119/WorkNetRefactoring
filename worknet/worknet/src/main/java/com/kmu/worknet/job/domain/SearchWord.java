package com.kmu.worknet.job.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.kmu.worknet.job.service.util.ParseService;

import lombok.ToString;

@ToString
public class SearchWord {
	private Map<String,List<String>> allList = new HashMap<String, List<String>>();
	
	private String wantedTitle;
	private String workRegion;
	private String busiSize;
	private String eduNm;
	private String enterTpNm;
	
	private List<String> wantedTitleList;
	private List<String> workRegionList;
	private List<String> busiSizeList;
	private List<String> eduNmList;
	private List<String> enterTpNmList;

	public void setWantedTitle(String wantedTitle) {
		this.wantedTitle = wantedTitle;
		if (wantedTitle.equals("")) {
			this.wantedTitleList = null;
		}else {
			this.wantedTitleList = Arrays.asList(wantedTitle);
		}
	}
	public void setWorkRegion(String workRegion) {
		this.workRegion = workRegion;
		this.workRegionList = parser(workRegion);
	}
	public void setBusiSize(String busiSize) {
		this.busiSize = busiSize;
		this.busiSizeList = parser(busiSize);
	}
	public void setEduNm(String eduNm) {
		this.eduNm = eduNm;
		this.eduNmList = parser(eduNm);

	}
	public void setEnterTpNm(String enterTpNm) {
		this.enterTpNm = enterTpNm;
		this.enterTpNmList = parser(enterTpNm);
	}
	
	
	public List<String> getWantedTitleList() {
		return wantedTitleList;
	}
	public List<String> getWorkRegionList() {
		return workRegionList;
	}
	public List<String> getBusiSizeList() {
		return busiSizeList;
	}
	public List<String> getEduNmList() {
		return eduNmList;
	}
	public List<String> getEnterTpNmList() {
		return enterTpNmList;
	}

	public List<String> parser(String urlParam) {
		ParseService parser = (x) -> Stream.of(x.split(","))
				.map(s -> s.trim())
				.filter(s -> s.matches("^[가-힣]*|^[가-힣]*\\([2]{1}~[3]{1}[가-힣]\\)|^[가-힣]*\\([4]{1}[가-힣]\\)$"))
				.filter(s -> s instanceof String)
				.map(s -> (String) s)
				.collect(Collectors.toList());
		
		if (urlParam.equals("") || urlParam == null) {
			return null;
		}else {
			return parser.UrlStringParser(urlParam);
		}
	}
	
	public String returnLink() {
		String link = "";
		for (String i : returnAllList().keySet()) {
			if (returnAllList().get(i)!=null) {
				link += returnAllList().get(i).toString()
						.replace("[", i.split("List")[0]+"=")
						.replace("]", "&");
			}
		}
		return link;
	}
	public String objectToString() {
		String  objectToString = "";
		for (String i : returnAllList().keySet()) {
			if (returnAllList().get(i)!=null) {
				objectToString += returnAllList().get(i).toString()
						.replace("[", "")
						.replace("]", ",");
					
			}
		}
		return objectToString;
	}
	
	public Map<String, List<String>> returnAllList() {
		allList.put("wantedTitleList", getWantedTitleList());
		allList.put("workRegionList", getWorkRegionList());
		allList.put("busiSizeList", getBusiSizeList());
		allList.put("eduNmList", getEduNmList());
		allList.put("enterTpNmList", getEnterTpNmList());
		return allList;
	}
	
	
}
