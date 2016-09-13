package com.yasikyeo.app.member.model;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	
	//아이디 중복 확인 시 사용하는 상수
	public static final int EXIST_ID=1; //해당아이디가 존재
	public static final int NONE_EXIST_ID=2;
	//=> 해당 아이디가 존재하지 않음

	//로그인 처리시 사용하는 상수	
	public static final int LOGIN_OK=1; //로그인 성공
	public static final int PWD_DISAGREE=2;//비밀번호 불일치
	public static final int ID_NONE=3; //해당아이디가 없는 경우
	
	//권한코드
	public static final String ADMIN_AUTH_CODE="ADMIN";
	public static final String USER_AUTH_CODE="USER";
	public static final String CEO_AUTH_CODE="CEO";
	
	public int insertMember(MemberVO vo);
	public int checkMemberId(String memberId);
	public int loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByMemberId(String memberId);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String memberId);
}
