package com.kmu.worknet.member.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.RequiredArgsConstructor;

public class MemberLoginSuccessHandler implements AuthenticationSuccessHandler {
	
	@Autowired
	MemberDetailService memberDetailService; 
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		/*
		IP : 0:0:0:0:0:0:0:1
		Session ID : 83C3D6766B3EB8A8216D171B6CCA9BB8
		name : tuehdnx
		권한 : ROLE_MEMBER 
		
		// IP, 세션 ID
		WebAuthenticationDetails web = (WebAuthenticationDetails) authentication.getDetails();
		System.out.println("IP : " + web.getRemoteAddress());
		System.out.println("Session ID : " + web.getSessionId());
		
		// 인증 ID
		System.out.println("name : " + authentication.getName());
		
		// 권한 리스트
		List<GrantedAuthority> authList = (List<GrantedAuthority>) authentication.getAuthorities();
		System.out.print("권한 : ");
		for(int i = 0; i< authList.size(); i++) {
			System.out.print(authList.get(i).getAuthority() + " ");
		}
		 */

		// 무조건 시작은 jobs 페이지
		HttpSession session = request.getSession();
		session.setAttribute("name", authentication.getName());
		try {
			memberDetailService.sessionSave(authentication.getName());
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("/jobs");
		
	}
}
