package com.kmu.worknet.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.kmu.worknet.member.domain.Member;
import com.kmu.worknet.member.service.EmailDuplicateCheckException;
import com.kmu.worknet.member.service.FindPassException;
import com.kmu.worknet.member.service.IdDuplicateCheckException;
import com.kmu.worknet.member.service.MemberDetailService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class MemberRestController {
	
	private final MemberDetailService memberDetailService;
	
	@PostMapping("/duplicateCheck")
	public void duplicateCheck(Member member) {
		memberDetailService.duplicateCheck(member);
	}
	@PostMapping(value ="/findByPass")
	public ResponseEntity<String> findByPass(
			@RequestBody Member member
			) throws Exception {
		return new ResponseEntity<String>(memberDetailService.findByPass(member), HttpStatus.OK);
	}
	@ExceptionHandler
	public ResponseEntity<String> memberExceptionHandler(FindPassException exception, HttpServletRequest request) {
		return new ResponseEntity<String>(exception.getErrMsg(), HttpStatus.BAD_REQUEST);
	}
	@ExceptionHandler
	public String memberExceptionHandler(IdDuplicateCheckException exception, HttpServletRequest request) {
		return exception.getErrMsg();
	}
	@ExceptionHandler
	public String memberExceptionHandlera(EmailDuplicateCheckException exception, HttpServletRequest request) {
		return exception.getErrMsg();
	}
}
