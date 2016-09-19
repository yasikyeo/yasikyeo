package com.yasikyeo.app.member.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis extends SqlSessionDaoSupport implements MemberDAO{

	private String namespace="config.mybatis.mapper.oracle.member";
	
	@Override
	public int insertMember(MemberVO memberVo) {
		return getSqlSession().insert(namespace+".insertMember", memberVo);
	}
	
	@Override
	public int checkMemberId(String memberId){
		return getSqlSession().selectOne(namespace+".selectCountMemberId", memberId);
	}
	
	@Override
	public String loginCheck(MemberVO memberVo){
		return getSqlSession().selectOne(namespace+".selectPwd", memberVo);
	}
	
	@Override
	public MemberVO selectMemberByMemberId(String memberId){
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId", memberId);
	}
	
	@Override
	public String selectMemberByMemberTel(MemberVO memberVo) {
		return getSqlSession().selectOne(namespace+".selectMemberByMemberTel", memberVo);
	}
	
	@Override
	public int updateMember(MemberVO memberVo){
		return getSqlSession().update(namespace+".updateMember", memberVo); 
	}
	
	@Override
	public int withdrawMember(String memberId){
		return getSqlSession().update(namespace+".withdrawMember", memberId);
	}

	@Override
	public int findPwd(MemberVO memberVo) {
		return getSqlSession().update(namespace+".findPwd", memberVo);
	}

	@Override
	public int changePwd(MemberVO memberVo) {
		return getSqlSession().update(namespace+".changePwd", memberVo);
	}
}
