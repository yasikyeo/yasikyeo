package com.yasikyeo.app.point.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MemberPointDAOMybatis extends SqlSessionDaoSupport implements MemberPointDAO{

	private String namespace="config.mybatis.mapper.oracle.point";
	@Override
	public int insertPoint(MemberPointVO memberPointVo) {
		return getSqlSession().insert(namespace+".insertPoint", memberPointVo);
	}

}
