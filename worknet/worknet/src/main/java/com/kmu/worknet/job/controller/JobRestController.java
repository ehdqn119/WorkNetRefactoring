package com.kmu.worknet.job.controller;

import com.kmu.worknet.job.rating.service.Assessment;
import com.kmu.worknet.job.rating.service.RatingService;
import org.apache.ibatis.binding.BindingException;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/jobs")
public class JobRestController {

	private final RatingService ratingService;

	public JobRestController(RatingService ratingService){
		this.ratingService = ratingService;
	}
	// 998395287

	@PostMapping("/rating")
	public String rating(@RequestBody @Valid Assessment assessment) {
		ratingService.jobRating(assessment);
		return "소중한 별점 감사합니다."; 
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public void getException(MethodArgumentNotValidException exception){
		System.out.println("@@@@@@ validation @@@@@");
		System.out.println(exception.getMessage());
		System.out.println(exception.getClass());
	}

	@ExceptionHandler(BindingException.class)
	public void getException(BindingException exception){
		System.out.println("@@@@@@ security @@@@@");
		System.out.println(exception.getMessage());
		System.out.println(exception.getClass());
	}

	@ExceptionHandler(DataIntegrityViolationException.class)
	public void getException(DataIntegrityViolationException exception){
		System.out.println("@@@@@@ db @@@@@");
		System.out.println("@@@@@@@@@@" + exception);
		System.out.println("@@@@@@@@@@" + exception.getClass());
	}
	
}
