package com.yasikyeo.app.member.model;

import com.yasikyeo.app.member.model.MemberVO;

public interface MemberDAO {
	public int insertMember(MemberVO vo);
	public int checkMemberId(String memberId);
	public String loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByMemberId(String memberId);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String memberId);
}
