package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface ReplyService {
	public List<ReplyVO> selectAllReply(SearchVO searchVo);
	public int selectReplyTotalCount(SearchVO searchVo);
}
