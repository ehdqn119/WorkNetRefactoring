package com.kmu.worknet.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kmu.worknet.member.domain.Member;
import com.kmu.worknet.member.service.MemberDetailService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberDetailService memberDetailService;
	
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST}) 
	public String login() {
		return "login";
	}
	
	@PostMapping(value = "/signUp")
	public String signUp(Member member) throws Exception {
		memberDetailService.signUp(member);
		return "/login";
	}

	
	
	
}
