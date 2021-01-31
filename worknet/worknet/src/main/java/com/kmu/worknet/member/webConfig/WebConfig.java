package com.kmu.worknet.member.webConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.kmu.worknet.job.service.impl.Interceptor;
import com.kmu.worknet.member.service.MemberDetailService;

@Configuration
public class WebConfig implements WebMvcConfigurer{
	@Autowired
	private MemberDetailService memberDetailService;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new Interceptor(memberDetailService)).addPathPatterns("/jobs","/jobs/category.do","/jobs/detailJob","/jobs/rating");
	}
	
	
}
