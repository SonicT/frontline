package com.frontline.newssummary.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frontline.newssummary.Service.RollingNewsService;
import com.frontline.newssummary.Service.SummaryService;
import com.frontline.newssummary.vo.RollingNewsVO;
import com.frontline.newssummary.vo.SummaryListVO;
import com.frontline.newssummary.vo.SummaryVO;

@Controller
public class SummaryPageController {

	@Inject
	RollingNewsService rollingNewsService;
	SummaryService summaryService;
	
	@RequestMapping("summaryPage")
	String contact(RollingNewsVO vo, HttpServletRequest request, SummaryVO summaryVO, SummaryListVO slvo) {
		System.out.println("aid : "+ slvo.getAid() + ", oid : "+ slvo.getOid());
		System.out.println("title : "+slvo.getTitle());
		System.out.println("img : "+slvo.getImg());
		System.out.println("Content : "+slvo.getContent());
		summaryVO.setArt_aid(slvo.getAid());
		summaryVO.setArt_oid(slvo.getOid());
		
		System.out.println("summaryVO aid is " + summaryVO.getArt_aid());
		System.out.println("summaryVO oid is " + summaryVO.getArt_oid());
		
		List<SummaryVO> summaryCollect = summaryService.SummaryCollect(summaryVO);
		if(summaryCollect !=null) {
			request.setAttribute("summaryCollect", summaryCollect);
		}
		
		request.setAttribute("selectedSummary", slvo);
		
		
		List<RollingNewsVO> rollingNewsList  = rollingNewsService.rollingTestList(vo);
		if(rollingNewsList !=null) {
			request.setAttribute("rollingNewsList", rollingNewsList);
		}
		
		
		return "summaryPage";
	}
	
	
}
