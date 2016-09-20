package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface NoticeDAO {
	public int insertNotice(NoticeVO noticeVo);
	public List<NoticeVO> selectAllNotice(SearchVO searchVO);
	public int selectTotalCount(SearchVO searchVo);
	public NoticeVO selectByNoNotice(int noticeNo);
}
