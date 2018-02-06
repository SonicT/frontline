package com.frontline.newssummary.dao;

import java.util.List;

import com.frontline.newssummary.vo.MainSummaryListVO;
import com.frontline.newssummary.vo.SummaryListVO;


public interface MainSummaryListDAO {
	List<MainSummaryListVO> getMainSummaryList (MainSummaryListVO vo)  ;
	List<SummaryListVO> getPoliticsSummaryList (SummaryListVO vo)  ;
	MainSummaryListVO getMainSummary (MainSummaryListVO vo)   ;
	MainSummaryListVO insertMainSummary (MainSummaryListVO vo)  ;  
}
