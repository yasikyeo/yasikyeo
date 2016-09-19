package com.yasikyeo.app.board.model;

public class NoticeVO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeUpfileName;
	private String noticeSufflx;
	private String managerNo;
	
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
	public String getNoticeSufflx() {
		return noticeSufflx;
	}
	public void setNoticeSufflx(String noticeSufflx) {
		this.noticeSufflx = noticeSufflx;
	}
	public String getManagerNo() {
		return managerNo;
	}
	public void setManagerNo(String managerNo) {
		this.managerNo = managerNo;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeUpfileName=" + noticeUpfileName + ", noticeSufflx=" + noticeSufflx + ", managerNo="
				+ managerNo + "]";
	}
	
	
}
