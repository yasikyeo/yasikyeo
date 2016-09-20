package com.yasikyeo.app.admin.model;

import java.sql.Timestamp;

public class AdminVO {
	private int adminNo;
	private String adminId;
	private String adminPwd;
	private String adminName;
	private Timestamp adminRegdate;
	private String authcode;
	
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
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public Timestamp getAdminRegdate() {
		return adminRegdate;
	}
	public void setAdminRegdate(Timestamp adminRegdate) {
		this.adminRegdate = adminRegdate;
	}
	public String getAuthcode() {
		return authcode;
	}
	public void setAuthcode(String authcode) {
		this.authcode = authcode;
	}
	@Override
	public String toString() {
		return "AdminVO [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPwd=" + adminPwd + ", adminName="
				+ adminName + ", adminRegdate=" + adminRegdate + ", authcode=" + authcode + "]";
	}
	
	
	
	
}
