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
		//아이디가 존재하는지 체크-아이디 중복확인시 사용
		return getSqlSession().selectOne(namespace+".selectCountMemberId", member_Id);
	}
	
	public String loginCheck(MemberVO memberVo){
		//아이디, 비밀번호가 일치하는지 여부 체크
		//로그인시 사용
		return getSqlSession().selectOne(namespace+".selectPwd", memberVo);
	}
	
	public MemberVO selectMemberByMemberId(String member_Id){
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId", member_Id);
	}
	
	public int updateMember(MemberVO vo){
		//회원정보 수정 처리-update
		return getSqlSession().update(namespace+".updateMember", vo); 
	}
	
	public int withdrawMember(String member_Id){
		//회원 탈퇴 처리
		return getSqlSession().update(namespace	+".withdrawMember", member_Id);
	}
	
}
