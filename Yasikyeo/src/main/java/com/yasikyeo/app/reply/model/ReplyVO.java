package com.yasikyeo.app.reply.model;

import java.sql.Timestamp;

public class ReplyVO {

	private int reply_no;/* 댓글번호 */
	private String reply_name;  /* 댓글작성자 */
	private String reply_content; /* 댓글내용 */
	private Timestamp reply_regdate;  /* 댓글작성일 */
	private int qna_no;  /* qna글번호 */
	private int review_no;  /* 구매후기글번호 */
	private int admin_no;  /* 관리자코드 */
	private int ceo_no;  /* 사장님코드 */
	
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public String getReply_name() {
		return reply_name;
	}
	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Timestamp getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Timestamp reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public int getCeo_no() {
		return ceo_no;
	}
	public void setCeo_no(int ceo_no) {
		this.ceo_no = ceo_no;
	}
	@Override
	public String toString() {
		return "ReplyVO [reply_no=" + reply_no + ", reply_name=" + reply_name + ", reply_content=" + reply_content
				+ ", reply_regdate=" + reply_regdate + ", qna_no=" + qna_no + ", review_no=" + review_no + ", admin_no="
				+ admin_no + ", ceo_no=" + ceo_no + "]";
	}
}
