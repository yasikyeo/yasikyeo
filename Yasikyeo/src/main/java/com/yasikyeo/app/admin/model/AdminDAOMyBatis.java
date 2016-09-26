package com.yasikyeo.app.admin.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.board.model.NoticeVO;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.member.model.MemberVO;

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

	@Override
	public List<MemberVO> selectMember() {
		return getSqlSession().selectList(namespace+".selectUserMember");
	}

	@Override
	public List<CeoVO> selectCeo() {
		return getSqlSession().selectList(namespace+".selectCeoMember");
	}

	@Override
	public MemberVO selectByNoMember(int memberNo) {
		return getSqlSession().selectOne(namespace+".selectByNoMember",memberNo);
	}

	@Override
	public CeoVO selectByNoCeoMember(int ceoNo) {
		return getSqlSession().selectOne(namespace+".selectByNoCeoMember",ceoNo);
	}

	@Override
	public int updateStop(int memberNo) {
		return getSqlSession().update(namespace+".updatestop",memberNo);
	}

	@Override
	public int updateUser(int memberNo) {
		return getSqlSession().update(namespace+".updateuser",memberNo);
	}

	@Override
	public int updateCeoStop(int ceoNo) {
		return getSqlSession().update(namespace+".updateceostop",ceoNo);
	}

	@Override
	public int updateCeo(int ceoNo) {
		return getSqlSession().update(namespace+".updateceo",ceoNo);
	}

	@Override
	public int adminInsert(AdminVO adminVo) {
		return getSqlSession().insert(namespace+".insertAdmin",adminVo);
	}

	@Override
	public int adminIdCheck(String adminId) {
		return getSqlSession().selectOne(namespace+".selectCountadminId",adminId);
	}

	
	

}
