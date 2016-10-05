package com.yasikyeo.app.reply.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImple implements ReplyService{

	@Autowired
	private ReplyDAO replyDao;
	
	@Override
	public List<ReplyVO> selectReplyByshopNo(int shopNo) {
		return replyDao.selectReplyByshopNo(shopNo);
	}

}
