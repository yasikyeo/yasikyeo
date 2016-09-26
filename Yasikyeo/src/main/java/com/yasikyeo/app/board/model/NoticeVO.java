package com.yasikyeo.app.board.model;

public class NoticeVO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeUpfileName;
	private String noticeSuffix;
	private int adminNo;
	private String noticeCode;
	
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
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	
	public String getNoticeCode() {
		return noticeCode;
	}
	public void setNoticeCode(String noticeCode) {
		this.noticeCode = noticeCode;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeUpfileName=" + noticeUpfileName + ", noticeSuffix=" + noticeSuffix + ", adminNo=" + adminNo
				+ ", noticeCode=" + noticeCode + "]";
	}
	
	
	
	
	
}
