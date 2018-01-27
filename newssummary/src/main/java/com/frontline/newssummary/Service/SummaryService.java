package com.frontline.newssummary.Service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.frontline.newssummary.dao.SummaryDAO;
import com.frontline.newssummary.vo.SummaryVO;

@Service
public class SummaryService {

	@Inject
	SqlSessionTemplate sqlSession;
	
	public SummaryVO SummarySelect (Integer sid){
		SummaryDAO dao = sqlSession.getMapper(SummaryDAO.class);
		return dao.SummarySelect(sid);
	}
	
	public void SummaryUpdate(SummaryVO vo) {
		SummaryDAO dao = sqlSession.getMapper(SummaryDAO.class);
	}
}
