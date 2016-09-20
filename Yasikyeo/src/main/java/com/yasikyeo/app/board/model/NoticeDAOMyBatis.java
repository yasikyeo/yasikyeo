package com.yasikyeo.app.board.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOMyBatis extends SqlSessionDaoSupport implements NoticeDAO{
	
	private String namespace="config.mybatis.mapper.oracle.notice";
	
	private static final Logger logger
	= LoggerFactory.getLogger(NoticeDAOMyBatis.class);

	@Override
	public int insertNotice(NoticeVO noticeVo) {
		return getSqlSession().insert(namespace+".insertNotice", noticeVo);
	}
	
	
}
