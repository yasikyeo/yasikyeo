package com.yasikyeo.app.reply.model;

import java.util.List;

public interface ReplyService {

	public List<ReplyVO> selectReplyByshopNo(int shopNo);
}
