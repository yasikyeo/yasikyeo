package com.yasikyeo.app.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private ReplyDAO replyDao;

	@Override
	public List<ReplyVO> selectAllReply(SearchVO searchVo) {
		return replyDao.selectAllReply(searchVo);
	}

	@Override
	public int selectReplyTotalCount(SearchVO searchVo) {
		return replyDao.selectReplyTotalCount(searchVo);
	}
	
	
}
