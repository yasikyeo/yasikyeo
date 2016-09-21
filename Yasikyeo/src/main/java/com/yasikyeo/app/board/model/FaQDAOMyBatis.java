package com.yasikyeo.app.board.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class FaQDAOMyBatis extends SqlSessionDaoSupport implements FaQDAO{
		
	private final String namespace="config.mybatis.mapper.oracle.faA";
	
	@Override
	public int insertFaQ(FaQVO faqVo) {
		return getSqlSession().insert(namespace+".insertfaq",faqVo);
	}

}
