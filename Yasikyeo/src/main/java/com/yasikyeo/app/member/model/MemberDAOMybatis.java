package com.yasikyeo.app.member.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis extends SqlSessionDaoSupport implements MemberDAO{

	private String namespace="config.mybatis.mapper.oracle.member";
	
	@Override
	public int insertMember(MemberVO vo) {
		return getSqlSession().insert(namespace+".insertMember", vo);
	}

	public int checkMemberId(String member_Id){
		return getSqlSession().selectOne(namespace+".selectCountMemberId", member_Id);
	}
	
	public String loginCheck(MemberVO memberVo){
		return getSqlSession().selectOne(namespace+".selectPwd", memberVo);
	}
	
	public MemberVO selectMemberByMemberId(String member_Id){
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId", member_Id);
	}
	
	public int updateMember(MemberVO vo){
		return getSqlSession().update(namespace+".updateMember", vo); 
	}
	
	public int withdrawMember(String member_Id){
		return getSqlSession().update(namespace	+".withdrawMember", member_Id);
	}
	
}
