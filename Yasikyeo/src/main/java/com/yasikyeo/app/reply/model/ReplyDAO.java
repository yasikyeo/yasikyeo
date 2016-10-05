package com.yasikyeo.app.reply.model;

import java.util.List;

public interface ReplyDAO {

	public List<ReplyVO> selectReplyByshopNo(int shopNo);
}
