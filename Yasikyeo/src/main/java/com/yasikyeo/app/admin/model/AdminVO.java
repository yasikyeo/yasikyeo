package com.yasikyeo.app.admin.model;

import java.sql.Timestamp;

public class AdminVO {
	
	//관리자계정관리
	private int manaterNo;
	private String manaterId;
	private String manaterPwd;
	private String manaterName;
	private Timestamp manaterRegdate;

	//게시판
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeUpfileName;
	private String noticeSuffix;

	//F&A
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private String faqupfileName;
	private String faqCategory;
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
	public Timestamp getManaterRegdate() {
		return manaterRegdate;
	}
	public void setManaterRegdate(Timestamp manaterRegdate) {
		this.manaterRegdate = manaterRegdate;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeUpfileName() {
		return noticeUpfileName;
	}
	public void setNoticeUpfileName(String noticeUpfileName) {
		this.noticeUpfileName = noticeUpfileName;
	}
	public String getNoticeSuffix() {
		return noticeSuffix;
	}
	public void setNoticeSuffix(String noticeSuffix) {
		this.noticeSuffix = noticeSuffix;
	}
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public String getFaqupfileName() {
		return faqupfileName;
	}
	public void setFaqupfileName(String faqupfileName) {
		this.faqupfileName = faqupfileName;
	}
	public String getFaqCategory() {
		return faqCategory;
	}
	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}
	@Override
	public String toString() {
		return "AdminVO [manaterNo=" + manaterNo + ", manaterId=" + manaterId + ", manaterPwd=" + manaterPwd
				+ ", manaterName=" + manaterName + ", manaterRegdate=" + manaterRegdate + ", noticeNo=" + noticeNo
				+ ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", noticeUpfileName="
				+ noticeUpfileName + ", noticeSuffix=" + noticeSuffix + ", faqNo=" + faqNo + ", faqTitle=" + faqTitle
				+ ", faqContent=" + faqContent + ", faqupfileName=" + faqupfileName + ", faqCategory=" + faqCategory
				+ "]";
	}
	
	

}
