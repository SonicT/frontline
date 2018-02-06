package com.frontline.newssummary.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frontline.newssummary.Service.CardBoardService;
import com.frontline.newssummary.vo.MainSummaryListVO;
import com.frontline.newssummary.vo.SummaryListVO;

@Controller
public class CardBoardController {

	
	@Inject
	CardBoardService cardBoardService;
	
	@RequestMapping("index")
	String showIndex(MainSummaryListVO msvo, HttpServletRequest request) {
		List<MainSummaryListVO> MainSummarylist = cardBoardService.getMainSummaryList(msvo);
		if(MainSummarylist !=null) {
			request.setAttribute("list", MainSummarylist);
		}
		return"index";
	}
	
	@RequestMapping("politics")
	String politics(SummaryListVO slvo, HttpServletRequest request) {
		List<SummaryListVO> Summarylist = cardBoardService.getPoliticsSummaryList(slvo);
		if(Summarylist !=null) {
			request.setAttribute("list", Summarylist);
		}
		return"ListIndex";
	}
}
