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

	public int checkMemberId(String memberId){
		return getSqlSession().selectOne(namespace+".selectCountMemberId", memberId);
	}
	
	public String loginCheck(MemberVO memberVo){
		return getSqlSession().selectOne(namespace+".selectPwd", memberVo);
	}
	
	public MemberVO selectMemberByMemberId(String memberId){
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId", memberId);
	}
	
	public int updateMember(MemberVO vo){
		return getSqlSession().update(namespace+".updateMember", vo); 
	}
	
	public int withdrawMember(String memberId){
		return getSqlSession().update(namespace	+".withdrawMember", memberId);
	}
	
}
