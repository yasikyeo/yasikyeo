package com.yasikyeo.app.reply.model;

import java.sql.Timestamp;

public class ReplyVO {

	private int replyNo;/* 댓글번호 */
	private String replyContent; /* 댓글내용 */
	private Timestamp replyRegdate;  /* 댓글작성일 */
	private int qnaNo;  /* qna글번호 */
	private int reviewNo;  /* 구매후기글번호 */
	private int adminNo;  /* 관리자코드 */
	private int shopNo; /* 업소코드 */
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyRegdate() {
		return replyRegdate;
	}
	public void setReplyRegdate(Timestamp replyRegdate) {
		this.replyRegdate = replyRegdate;
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
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", replyContent=" + replyContent + ", replyRegdate=" + replyRegdate
				+ ", qnaNo=" + qnaNo + ", reviewNo=" + reviewNo + ", adminNo=" + adminNo + ", shopNo=" + shopNo + "]";
	}
}
