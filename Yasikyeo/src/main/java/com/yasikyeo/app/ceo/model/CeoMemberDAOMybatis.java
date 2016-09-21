package com.yasikyeo.app.ceo.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CeoMemberDAOMybatis extends SqlSessionDaoSupport implements CeoMemberDAO{

	private String namespace="config.mybatis.mapper.oracle.ceomember";
	
	@Override
	public int insertMember(CeoVO ceoVo) {
		return getSqlSession().insert(namespace+".insertMember", ceoVo);
	}
	
	@Override
	public int checkMemberId(String ceoId){
		return getSqlSession().selectOne(namespace+".selectCountMemberId", ceoId);
	}
	
	@Override
	public String loginCheck(CeoVO ceoVo){
		return getSqlSession().selectOne(namespace+".selectPwd", ceoVo);
	}
	
	@Override
	public CeoVO selectMemberByMemberId(String ceoId){
		return getSqlSession().selectOne(namespace+".selectMemberByMemberId", ceoId);
	}
	
	@Override
	public String selectMemberByMemberTel(CeoVO ceoVo) {
		return getSqlSession().selectOne(namespace+".selectMemberByMemberTel", ceoVo);
	}
	
	@Override
	public int updateMember(CeoVO ceoVo){
		return getSqlSession().update(namespace+".updateMember", ceoVo); 
	}
	
	@Override
	public int withdrawMember(String ceoId){
		return getSqlSession().update(namespace+".withdrawMember", ceoId);
	}

	@Override
	public int findPwd(CeoVO ceoVo) {
		return getSqlSession().update(namespace+".findPwd", ceoVo);
	}

	@Override
	public int changePwd(CeoVO ceoVo) {
		return getSqlSession().update(namespace+".changePwd", ceoVo);
	}
}
