package com.yasikyeo.app.ceo.model;

public interface CeoMemberDAO {
	public int insertMember(CeoVO ceoVo);
	public int checkMemberId(String ceoId);
	public String loginCheck(CeoVO ceoVo);
	public CeoVO selectMemberByMemberId(String ceoId);
	public String selectMemberByMemberTel(CeoVO ceoVo);
	public int findPwd(CeoVO ceoVo);
	public int changePwd(CeoVO ceoVo);
	public int updateMember(CeoVO ceoVo);
	public int withdrawMember(String ceoId);
}
