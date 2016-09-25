package com.yasikyeo.app.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public int noticeUpdate(NoticeVO noticeVo) {
		return noticeDao.noticeUpdate(noticeVo);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return noticeDao.deleteNotice(noticeNo);
	}

	@Override
	@Transactional
	public int deleteNotice(List<NoticeVO> noticeList) {
		int cnt =0;
		try{
			for(NoticeVO vo : noticeList){
				int noticeNo= vo.getNoticeNo();
				if(noticeNo!=0){
					cnt = noticeDao.deleteNotice(noticeNo);
				}
			}
		}catch(RuntimeException e){
			e.printStackTrace();
			cnt=-1;
		}
		
		return cnt;
	}

	
}
