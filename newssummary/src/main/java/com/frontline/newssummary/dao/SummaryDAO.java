package com.frontline.newssummary.dao;

import com.frontline.newssummary.vo.SummaryVO;;

public interface SummaryDAO {
public SummaryVO SummarySelect(Integer sid);
public void SummaryUpdate(SummaryVO vo);
}
