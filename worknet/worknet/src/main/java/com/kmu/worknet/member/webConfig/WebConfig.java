package com.kmu.worknet.member.webConfig;

import com.kmu.worknet.job.service.impl.Interceptor;
import com.kmu.worknet.member.service.MemberDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Profile("!test")
@Configuration
public class WebConfig implements WebMvcConfigurer{
	@Autowired
	private MemberDetailService memberDetailService;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new Interceptor(memberDetailService)).addPathPatterns("/jobs","/jobs/category.do","/jobs/detailJob","/jobs/rating");
	}
	
	
}
