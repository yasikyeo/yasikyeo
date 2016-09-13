package com.yasikyeo.app.admin.model;

public interface AdminDAO {
	public String loginCheck(AdminVO adminVo);
	public AdminVO selectMemberByMemberId(String adminId);
}
 