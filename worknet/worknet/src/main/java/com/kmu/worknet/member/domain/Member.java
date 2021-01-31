package com.kmu.worknet.member.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Member {
	private String memId;
	private String memPw;
	private String email;
	private String name;
	private String date;
	private String gender;
	private String phone;
	private String authoritie;
	
}
