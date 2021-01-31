package com.kmu.worknet.job.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//vo 클래스
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Job {
	// api 참조
	// http://openapi.work.go.kr/opi/opi/opia/wantedApiDetailVw.do

	private List<String> busiSizeList;
	private List<String> workRegionList;
	

	private int recRating;
	private int rating;

	private int id;
	private String wantedAuthNo;
	private String corpNm;
	private String reperNm;
	private String totPsncnt;
	private String capitalAmt;
	private String yrSalesAmt;
	private String indTpCdNm;
	private String busiCont;
	private String corpAddr;
	private String homePg;
	private String busiSize;
	private String jobsNm;
	private String wantedTitle;
	private String relJobsNm;
	private String jobCont;
	private String receiptCloseDt;
	private String empTpNm;
	private String collectPsncnt;
	private String salTpNm;
	private String enterTpNm;
	private String eduNm;
	private String forLang;
	private String major;
	private String certificate;
	private String mltsvcExcHope;
	private String compAbl;
	private String pfCond;
	private String etcPfCond;
	private String selMthd;
	private String rcptMthd;
	private String submitDoc;
	private String etcHopeCont;
	private String workRegion;
	private String indArea;
	private String workdayWorkhrCont;
	private String fourIns;
	private String retirepay;
	private String etcWelfare;
	private String disableCvntl;
	private String empChargerDpt;
	private String contactTelno;
	private String chargerFaxNo;
	private String created;
	private String jobsNmcode;

	// default 생성자 있어야함 : lombok issue
//	public Job() { 
//	}
}
