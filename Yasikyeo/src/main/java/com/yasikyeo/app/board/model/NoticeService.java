package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface NoticeService {
	
	//머리말 상수
	public static final String NOTICE="공지사항";
	public static final String EVENTE="이벤트";
	
	public int insertNotice(NoticeVO noticeVo);
	public List<NoticeVO> selectAllNoitce(SearchVO searchVO);
	public int selectTotalCount(SearchVO searchVo);
	public NoticeVO selectByNoNotice(int noticeNo);
	public int noticeUpdate(NoticeVO noticeVo);
	public int deleteNotice(int noticeNo);
}
