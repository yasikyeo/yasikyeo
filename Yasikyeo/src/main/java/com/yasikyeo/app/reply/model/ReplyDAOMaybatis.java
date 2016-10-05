package com.yasikyeo.app.reply.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOMaybatis extends SqlSessionDaoSupport implements ReplyDAO{

	private String namespace = "config.mybatis.mapper.oracle.reply";
	@Override
	public List<ReplyVO> selectReplyByshopNo(int shopNo) {
		return getSqlSession().selectList(namespace+".selectReplyByshopNo", shopNo);
	}

}
