package com.kmu.worknet.job.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kmu.worknet.job.domain.Page;
import com.kmu.worknet.job.domain.SearchWord;
import com.kmu.worknet.job.domain.testDomain;
import com.kmu.worknet.job.mappers.testMapper;
import com.kmu.worknet.job.service.JobService;
import com.kmu.worknet.member.service.MemberDetailService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/jobs")
@RequiredArgsConstructor
public class JobController {
	
	private final String DEFAULT_KIND = "false";
	private final JobService jobService;
	private final MemberDetailService memberDetailService;
	
	@GetMapping("/test") // 상세조회 // wantedAuthNo = KF11192005110001 test 용도
	public ModelAndView main(
			testDomain domain,
			ModelAndView mav
			) throws Exception  {
		mav.setViewName("test");
		return mav;
	}
	
	@GetMapping //전체 리스트
	public ModelAndView jobs(
			Page page,
			ModelAndView mav,
			Authentication authentication
			) throws Exception  {
		page.setTotalBoard(jobService.selectToalBoard());
		mav.addObject("page", page);
		mav.addObject("jobs", jobService.selectJobList(page));
		Map<String, Object> jobs = new HashMap<String, Object>();
		jobs.put("recommendList", jobService.selectRecomandJob(memberDetailService.findByMemberSeq(authentication.getName())));
		mav.addObject("recSet", jobs);
		mav.setViewName("main");

		return mav;
	}
	
	@GetMapping("/detailJob") // 상세조회 // wantedAuthNo = KF11192005110001 test 용도
	public ModelAndView detailJob(
			@RequestParam(name = "Kind") String kind, // 이걸로 판별 모든값
			@RequestParam(name = "wantedAuthNo") String wantedAuthNo,
			@RequestParam(name = "beforeWantedAuthNo", defaultValue = "null") String beforeWantedAuthNo,
			ModelAndView mav, 
			SearchWord searchWord,
			Authentication authentication
			) throws Exception  {
		int memSeq = memberDetailService.findByMemberSeq(authentication.getName());
		jobService.insertDetailActivity(wantedAuthNo, kind, memSeq, searchWord.objectToString());
		mav.addObject("job",jobService.selectJobDetail(wantedAuthNo));
		mav.addObject("recSet", jobService.selectJobBaseList(wantedAuthNo));
		mav.setViewName("detailJob");
		return mav;
		
	}
    /*
     * http://localhost:9870/jobs/category.do?
     * workRegion=대구,서울,경기도,경상북도,경상남도
     * &
     * busiSize=대기업,중소기업,중견기업,기타
     * &
     * eduNm=무관, 초졸이하, 증졸, 고졸, 대졸(2~3년), 대졸(4년), 석사, 박사
     * 
	 * 검색 리스트 : [, , , , , ] 20 개
	 * 페이지정보 : 현재 페이지, 스타트 페이지, 끝페이지, 
	 *
	 * result 값
	 * wantedTitle=${wantedTitle}
	 * workRegion=${workRegion}
	 * busiSize=${busiSize}
	 * eduNm=${eduNm}
	 * wantedTitle=${wantedTitle}&workRegion=${workRegion}&busiSize=${busiSize}&eduNm=${eduNm}	
	 * 
	 * 차후 추가
	 * 
	 * //mav.addObject("enterTpNm",parser.UrlStringParser(workRegion)); // 추가 해야함
	 */
	// 얘는 무조건 4
	@GetMapping("/category.do") // 필터 조회
	public ModelAndView categoryDo(
			SearchWord searchWord,
			Page page,
			ModelAndView mav
			) throws Exception  {
		
		if (searchWord.returnAllList().keySet().stream()
				.filter(s -> searchWord.returnAllList().get(s) != null)
				.count() > 0) {
			mav.addObject("url",searchWord.returnLink());
			mav.addObject("SearchText",searchWord.returnAllList());
			page.setTotalBoard(jobService.selectCategoryTotalBoard(searchWord));
			mav.addObject("jobs", jobService.categoryDo(searchWord, page));
			mav.addObject("page", page);
		}else {
			mav.addObject("jobs", null);
		}

		mav.setViewName("category");
		return mav;
	   }

}