package com.yasikyeo.app.ceo.model;

import java.sql.Timestamp;

public class CeoVO {
	private int ceoNo;
	private String ceoId;
	private String ceoName;
	private String ceoEmail;
	private String ceoTel;
	private Timestamp ceoRegdate;
	private String ceoWithdraw;
	private String authCode;
	
	public int getCeoNo() {
		return ceoNo;
	}
	public void setCeoNo(int ceoNo) {
		this.ceoNo = ceoNo;
	}
	public String getCeoId() {
		return ceoId;
	}
	public void setCeoId(String ceoId) {
		this.ceoId = ceoId;
	}
	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public String getCeoEmail() {
		return ceoEmail;
	}
	public void setCeoEmail(String ceoEmail) {
		this.ceoEmail = ceoEmail;
	}
	public String getCeoTel() {
		return ceoTel;
	}
	public void setCeoTel(String ceoTel) {
		this.ceoTel = ceoTel;
	}
	public Timestamp getCeoRegdate() {
		return ceoRegdate;
	}
	public void setCeoRegdate(Timestamp ceoRegdate) {
		this.ceoRegdate = ceoRegdate;
	}
	public String getCeoWithdraw() {
		return ceoWithdraw;
	}
	public void setCeoWithdraw(String ceoWithdraw) {
		this.ceoWithdraw = ceoWithdraw;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	@Override
	public String toString() {
		return "CeoVO [ceoNo=" + ceoNo + ", ceoId=" + ceoId + ", ceoName=" + ceoName + ", ceoEmail=" + ceoEmail
				+ ", ceoTel=" + ceoTel + ", ceoRegdate=" + ceoRegdate + ", ceoWithdraw=" + ceoWithdraw + ", authCode="
				+ authCode + "]";
	}
	
	
}
