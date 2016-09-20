package com.yasikyeo.app.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public int insertNotice(NoticeVO noticeVo) {
		return noticeDao.insertNotice(noticeVo);
	}

	@Override
	public List<NoticeVO> selectAllNoitce(SearchVO searchVO) {
		return noticeDao.selectAllNotice(searchVO);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return noticeDao.selectTotalCount(searchVo);
	}

	@Override
	public NoticeVO selectByNoNotice(int noticeNo) {
		return noticeDao.selectByNoNotice(noticeNo);
	}

	
}
