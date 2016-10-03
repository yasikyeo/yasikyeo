package com.yasikyeo.app.point.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;

@Repository
public class MemberPointDAOMybatis extends SqlSessionDaoSupport implements MemberPointDAO{

	private String namespace="config.mybatis.mapper.oracle.point";
	@Override
	public int insertPoint(MemberPointVO memberPointVo) {
		return getSqlSession().insert(namespace+".insertPoint", memberPointVo);
	}
	@Override
	public int updatePoint(Map<String, Object> map) {
		return getSqlSession().update(namespace+".updatePoint", map);
	}
	@Override
	public List<Map<String, Object>> selectPoint(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectPoint", searchVo);
	}
	@Override
	public int selectCountPoint(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectCountPoint", searchVo);
	}

}
