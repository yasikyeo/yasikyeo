package com.yasikyeo.app.board.model;

import java.sql.Timestamp;

public class ReplyVO {
	private int replyNo;
	private String replyName;
	private String replyContent;
	private Timestamp regdate;
	private int adminNo;
	private int memberNo;
	private int qnaNo;
	private int reviewNo;
	private int ceoNo;
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyName() {
		return replyName;
	}
	public void setReplyName(String replyName) {
		this.replyName = replyName;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getCeoNo() {
		return ceoNo;
	}
	public void setCeoNo(int ceoNo) {
		this.ceoNo = ceoNo;
	}
	@Override
	public String toString() {
		return "ReplayVO [replyNo=" + replyNo + ", replyName=" + replyName + ", replyContent=" + replyContent
				+ ", regdate=" + regdate + ", adminNo=" + adminNo + ", memberNo=" + memberNo + ", qnaNo=" + qnaNo
				+ ", reviewNo=" + reviewNo + ", ceoNo=" + ceoNo + "]";
	}
	
	
}
