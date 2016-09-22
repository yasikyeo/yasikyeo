package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface FaQService {
	public int insertFaq(FaQVO faqVo);
	public List<FaQVO> selectAllFaQ(SearchVO searchVO);
	public int selectfaqTotalCount(SearchVO searchVO);
}
