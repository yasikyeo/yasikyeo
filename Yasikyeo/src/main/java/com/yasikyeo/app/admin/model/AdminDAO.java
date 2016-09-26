package com.yasikyeo.app.admin.model;

import java.util.List;

import com.yasikyeo.app.board.model.NoticeVO;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.member.model.MemberVO;

public interface AdminDAO {
	public int adminInsert(AdminVO adminVo);
	public String loginCheck(AdminVO adminVo);
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
 