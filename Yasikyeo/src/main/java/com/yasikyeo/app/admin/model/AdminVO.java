package com.yasikyeo.app.admin.model;

import java.sql.Timestamp;

public class AdminVO {
	private int manaterNo;
	private String manaterId;
	private String manaterPwd;
	private String manaterName;
	private String manterRegdate;
	public int getManaterNo() {
		return manaterNo;
	}
	public void setManaterNo(int manaterNo) {
		this.manaterNo = manaterNo;
	}
	public String getManaterId() {
		return manaterId;
	}
	public void setManaterId(String manaterId) {
		this.manaterId = manaterId;
	}
	public String getManaterPwd() {
		return manaterPwd;
	}
	public void setManaterPwd(String manaterPwd) {
		this.manaterPwd = manaterPwd;
	}
	public String getManaterName() {
		return manaterName;
	}
	public void setManaterName(String manaterName) {
		this.manaterName = manaterName;
	}
	public String getManterRegdate() {
		return manterRegdate;
	}
	public void setManterRegdate(String manterRegdate) {
		this.manterRegdate = manterRegdate;
	}
	@Override
	public String toString() {
		return "AdminVO [manaterNo=" + manaterNo + ", manaterId=" + manaterId + ", manaterPwd=" + manaterPwd
				+ ", manaterName=" + manaterName + ", manterRegdate=" + manterRegdate + "]";
	}
	
	
	
}
