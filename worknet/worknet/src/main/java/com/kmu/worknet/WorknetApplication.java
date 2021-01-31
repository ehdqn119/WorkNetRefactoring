package com.kmu.worknet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class WorknetApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(WorknetApplication.class, args);

	}

}
/*
 * 1. lombok
 * 2. web 
 * 3. mybatis
 * 
 * 4. mysql
 * 5. thymeleaf
 * 나머지 알아서 설치하고 그담에 mapper 만 오늘 좀 만들고 디비 연동만 좀 시키도
 *
*/