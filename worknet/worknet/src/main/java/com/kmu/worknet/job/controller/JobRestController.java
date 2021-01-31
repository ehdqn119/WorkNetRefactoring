package com.kmu.worknet.job.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kmu.worknet.job.service.JobService;
import com.kmu.worknet.member.service.MemberDetailService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/jobs")
@RequiredArgsConstructor
public class JobRestController {
	
	private final JobService jobService;
	private final MemberDetailService memberDetailService; 

	@PostMapping("/rating")
	public String rating(
			@RequestBody Map<String,Object> map,
			Authentication authentication
			) throws Exception {
		int memSeq = memberDetailService.findByMemberSeq(authentication.getName());
		if(map.get("Kind").equals("1") || map.get("Kind").equals("4")) {
			if(jobService.ratingCheck(map, memSeq).equals("0")) {
				jobService.insertRating(map, memSeq);
				jobService.insertRatingActivity(map, memSeq);
			}else {
				jobService.updateRating(map, memSeq);
				jobService.insertRatingReviseRating(map, memSeq);
			}
		}else if(map.get("Kind").equals("2")) {	
			jobService.updateRecRating(map, memSeq);
		}else if(map.get("Kind").equals("3")) {
			if(jobService.jobBaseRatingCheck(map, memSeq).equals("0")) {
				
				jobService.insertJobBaseRatingInsert(map, memSeq);
				jobService.insertRatingActivity(map, memSeq);
			}else {
				jobService.updateJobBaseRating(map, memSeq);
				jobService.insertRatingReviseRating(map, memSeq);
			}
			
		}
		return "소중한 별점 감사합니다."; 
	}
	
}
