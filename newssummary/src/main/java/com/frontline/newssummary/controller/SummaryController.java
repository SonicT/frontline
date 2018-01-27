package com.frontline.newssummary.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frontline.newssummary.Service.SummaryService;
import com.frontline.newssummary.vo.SummaryVO;

@Controller
public class SummaryController {

	
	@Inject
	SummaryService summaryService;
	
	@RequestMapping("likeHateTest")
	String likeHateTest(SummaryVO svo, HttpServletRequest request) {
		
		int sid =7;
		SummaryVO SummarySelect = summaryService.SummarySelect(sid);
		if(SummarySelect !=null) {
			request.setAttribute("SummarySelect", SummarySelect);
		}
		return"likeHateTest";
	}
}
