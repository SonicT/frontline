package com.frontline.newssummary.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frontline.newssummary.Service.RollingTextService;
import com.frontline.newssummary.vo.rollingnewsVO;
import com.frontline.newssummary.vo.weatherVO;

@Controller
public class SummaryPageController {

	@Inject
	RollingTextService rollingTextService;
	
	@RequestMapping("summaryPage")
	String contact(rollingnewsVO rnvo, weatherVO wvo, HttpServletRequest request) {
		List<rollingnewsVO> rollingnewsList = rollingTextService.rollingList(rnvo);
		List<weatherVO> weatherList  = rollingTextService.weatherList(wvo);
		if(rollingnewsList !=null) {
			request.setAttribute("rollingnewsList", rollingnewsList);
		}
		if(weatherList !=null) {
			request.setAttribute("weatherList", weatherList);
		}
		return "summaryPage";
	}
	
}
