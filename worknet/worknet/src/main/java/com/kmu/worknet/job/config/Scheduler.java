package com.kmu.worknet.job.config;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kmu.worknet.job.service.JobService;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class Scheduler {
	
	private final JobService jobService;
	
	private Logger logger = LoggerFactory.getLogger(Scheduler.class);
	
	@Scheduled(cron="0 0 0 * * *",zone = "Asia/Seoul")
	public void updateJobDate() throws Exception{
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd");
		Date currentDate = new Date();
		String today = format1.format(currentDate);
		logger.info("update closeDate");
		
		jobService.updateJobDate(today);

		logger.info("finish closeDate");
	}
}
