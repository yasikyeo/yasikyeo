package com.yasikyeo.app.admin.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yasikyeo.app.board.model.NoticeVO;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.member.model.MemberVO;


public interface AdminService {
	
	//아이디 중복 확인
	public static final int EXIST_ID=1; //해당아이디가 존재
	public static final int NONE_EXIST_ID=2;
	//=> 해당 아이디가 존재하지 않음
	
	//로그인 처리시 사용하는 상수	
	public static final int LOGIN_OK=1; //로그인 성공
	public static final int PWD_DISAGREE=2;//비밀번호 불일치
	public static final int ID_NONE=3; //해당아이디가 없는 경우
	
	
	
	public int insertAdmin(AdminVO adminVo);
	public int adminIdCheck(String adminId);
	public int loginCheck(AdminVO adminVo);
	public AdminVO selectMemberByMemberId(String adminId);
	public List<MemberVO> selectMember();
	public List<CeoVO> selectCeo();
	public MemberVO selectByNoMember(int memberNo);
	public CeoVO selectByNoCeoMember(int ceoNo);
	public int updateStop(int memberNo);
	public int updateUser(int memberNo);
	public int updateCeoStop(int ceoNo);
	public int updateCeo(int ceoNo);
	
}
