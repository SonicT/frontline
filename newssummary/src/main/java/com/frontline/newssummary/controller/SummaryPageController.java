package com.frontline.newssummary.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frontline.newssummary.Service.RollingNewsService;
import com.frontline.newssummary.Service.RollingWeatherService;
import com.frontline.newssummary.vo.RollingNewsVO;

@Controller
public class SummaryPageController {

	@Inject
	RollingNewsService rollingNewsService;
	
	@RequestMapping("summaryPage")
	String contact(RollingNewsVO vo, HttpServletRequest request) {
		List<RollingNewsVO> rollingNewsList  = rollingNewsService.rollingTestList(vo);
		if(rollingNewsList !=null) {
			request.setAttribute("rollingNewsList", rollingNewsList);
		}
		return "summaryPage";
	}
	
}
