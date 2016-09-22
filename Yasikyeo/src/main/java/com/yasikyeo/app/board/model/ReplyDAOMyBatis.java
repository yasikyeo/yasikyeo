package com.yasikyeo.app.board.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;

@Repository
public class ReplyDAOMyBatis extends SqlSessionDaoSupport implements ReplyDAO{
	
	private static String namespace="config.mybatis.mapper.oracle.reply";

	@Override
	public List<ReplyVO> selectAllReply(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAllReply",searchVo);
	}

	@Override
	public int selectReplyTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectReplyTotalCount",searchVo);
	}
	
	
}
