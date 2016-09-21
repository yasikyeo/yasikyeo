package com.yasikyeo.app.ceo.model;

import java.sql.Timestamp;

public class CeoVO {
	private int ceoNo;
	private String ceoId;
	private String ceoPwd;
	private String ceoName;
	private String ceoEmail;
	private String ceoTel;
	private String ceoBirth;
	private Timestamp ceoRegdate;
	private String ceoWithdraw;
	private String authcode;
	
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
	public String getCeoPwd() {
		return ceoPwd;
	}
	public void setCeoPwd(String ceoPwd) {
		this.ceoPwd = ceoPwd;
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
	public String getCeoBirth() {
		return ceoBirth;
	}
	public void setCeoBirth(String ceoBirth) {
		this.ceoBirth = ceoBirth;
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
	public String getAuthcode() {
		return authcode;
	}
	public void setAuthcode(String authcode) {
		this.authcode = authcode;
	}
	
	@Override
	public String toString() {
		return "CeoVO [ceoNo=" + ceoNo + ", ceoId=" + ceoId + ", ceoPwd=" + ceoPwd + ", ceoName=" + ceoName
				+ ", ceoEmail=" + ceoEmail + ", ceoTel=" + ceoTel + ", ceoBirth=" + ceoBirth + ", ceoRegdate="
				+ ceoRegdate + ", ceoWithdraw=" + ceoWithdraw + ", authcode=" + authcode + "]";
	}
}
