package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface FaQDAO {
	public int insertFaQ(FaQVO faqVo);
	public List<FaQVO> selectAllFaQ(SearchVO searchVO);
	public int selectfaqTotalCount(SearchVO searchVO);
	public FaQVO selectByNoFaq(int faqNo);
	public int faqUpdate(FaQVO faqVo);
	public int faqDelete(int faqNo);
}
