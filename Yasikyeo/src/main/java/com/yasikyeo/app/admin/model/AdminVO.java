package com.yasikyeo.app.admin.model;

import java.sql.Timestamp;

public class AdminVO {
	private int adminNo;
	private String adminId;
	private String adminPwd;
	private Timestamp adminRegdate;
	private String authCode;
	
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public Timestamp getAdminRegdate() {
		return adminRegdate;
	}
	public void setAdminRegdate(Timestamp adminRegdate) {
		this.adminRegdate = adminRegdate;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	@Override
	public String toString() {
		return "AdminVO [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPwd=" + adminPwd + ", adminRegdate="
				+ adminRegdate + ", authCode=" + authCode + "]";
	}
	
	
}
