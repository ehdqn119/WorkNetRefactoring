package com.kmu.worknet.job.service.impl;

import com.kmu.worknet.member.service.MemberDetailService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Interceptor implements HandlerInterceptor {
	
	private MemberDetailService memberDetailService;
	
	public Interceptor(final MemberDetailService memberDetailService) {
		this.memberDetailService = memberDetailService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String memid = SecurityContextHolder.getContext().getAuthentication().getName();
		memberDetailService.updateSessionStopTime(memberDetailService.findByMemberSeq(memid));
		return true;
	}
}
