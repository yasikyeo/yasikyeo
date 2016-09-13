package com.yasikyeo.app.admin.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOMyBatis extends SqlSessionDaoSupport implements AdminDAO{

	private String namespace = "config.mybatis.mapper.oracle.admin";
	
	public String loginCheck(AdminVO adminVo) {
		return getSqlSession().selectOne(namespace+".selectPwd", adminVo);
	}

	@Override
	public AdminVO selectMemberByMemberId(String adminId) {
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId",adminId);
	}

}
