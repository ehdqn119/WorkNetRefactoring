package com.kmu.worknet.member.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kmu.worknet.job.domain.Job;
import com.kmu.worknet.job.mappers.mapper;
import com.kmu.worknet.member.domain.Member;
import com.kmu.worknet.member.domain.MemberDetails;
import com.kmu.worknet.member.mappers.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberDetailService implements UserDetailsService {
	
	private final MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberDetails member = memberMapper.findByuser(username);
		return member;
	}
	
	public void signUp(Member member) throws Exception {
		member.setMemPw(new BCryptPasswordEncoder().encode(member.getMemPw()));
		memberMapper.signUp(member);
	}
	
	public String duplicateCheck(Member member){
		try {
			memberMapper.findByuser(member.getMemId()).getMemId();
		} catch (NullPointerException e) {
			try {
				memberMapper.findByEmail(member.getEmail()).getEmail();
			} catch (NullPointerException es) {
				throw new EmailDuplicateCheckException("ALL_YES");
			}
			throw new IdDuplicateCheckException("ID_YES");
		}
		try {
			memberMapper.findByEmail(member.getEmail()).getEmail();
		} catch (NullPointerException es) {
			throw new EmailDuplicateCheckException("EMAIL_YES");
		}
	
		return "NO";
	}
	
	public int findByMemberSeq(String memid) throws Exception {
		return memberMapper.findByMemberSeq(memid);
	}
	
	public void sessionSave(String memid) throws Exception  {
		 memberMapper.sessionSave(memberMapper.findByMemberSeq(memid));
	}
	public void updateSessionStopTime(int memSeq) throws Exception {
		memberMapper.updateSessionStopTime(memSeq);
	}
	public String findByPass(Member member) {
		int newPass = 0;
		try {
			 newPass = (int) (Math.random() * 1000000000);
			Member newPassUpdateMember = memberMapper.findByPass(member);
			newPassUpdateMember.setMemPw(new BCryptPasswordEncoder().encode(String.valueOf(newPass)));
			memberMapper.updatePass(newPassUpdateMember);
		} catch (NullPointerException e) {
			throw new FindPassException("bad request");
		}
		
		return String.valueOf(newPass);
	}
}
