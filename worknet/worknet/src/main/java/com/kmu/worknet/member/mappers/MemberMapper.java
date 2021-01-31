package com.kmu.worknet.member.mappers;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kmu.worknet.member.domain.Member;
import com.kmu.worknet.member.domain.MemberDetails;

@Mapper
public interface MemberMapper {
	// 로그인
	public MemberDetails findByuser(String username);
	// 회원가입
	public void signUp(Member member);
	// 멤버 seq 찾기
	public int findByMemberSeq(String memid);
	
	public void sessionSave(int memSeq);
	
	public void updateSessionStopTime(int memSeq);

	public Member findByEmail(String memberEmail);
	
	public Member findByPass(@Param(value = "member") Member member);
	
	public void updatePass(@Param(value = "member") Member member); 
	
	
}
