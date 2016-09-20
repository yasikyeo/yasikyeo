package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface NoticeService {
	public int insertNotice(NoticeVO noticeVo);
	public List<NoticeVO> selectAllNoitce(SearchVO searchVO);
	public int selectTotalCount(SearchVO searchVo);
}
