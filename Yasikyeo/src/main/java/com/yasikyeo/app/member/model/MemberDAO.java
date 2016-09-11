package com.yasikyeo.app.member.model;

import com.yasikyeo.app.member.model.MemberVO;

public interface MemberDAO {
	public int insertMember(MemberVO vo);
	public int checkMemberId(String member_Id);
	public String loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByMemberId(String member_Id);
	public int updateMember(MemberVO vo);
	public int withdrawMember(String member_Id);
}
