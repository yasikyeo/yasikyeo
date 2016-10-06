package com.yasikyeo.app.qna.model;

import java.sql.Timestamp;

public class QnaVo {

	private int qnaNo; /* qna글번호 */
	private String qnaName; /* qna이름 */
	private String qnaEmail; /* qna이메일 */
	private String qnaCategori; /* qna카테고리 */
	private String qnaTitle; /* qna제목 */
	private String qnaContent; /* qna문의내용 */
	private String qnaUpfilename; /* qna업로드파일명 */
	private String qnaOriginfilename; /* qna오리지날파일명 */
	private String qnaUpfilename2;/* qna업로드파일명2 */
	private String qnaOriginfilename2; /* qna오리지날파일명2 */
	private String qnaUpfilename3; /* qna업로드파일명3 */
	private String qnaOriginfilename3; /* qna오리지날파일명3 */
	private String qnaPwd;
	private Timestamp qnaRegdate; /* qna등록일 */
	private String memberNo;/* 회원코드 */
	private int ceoNo; /* 사장님코드 */
	
	
	public String getQnaPwd() {
		return qnaPwd;
	}
	public void setQnaPwd(String qnaPwd) {
		this.qnaPwd = qnaPwd;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaName() {
		return qnaName;
	}
	public void setQnaName(String qnaName) {
		this.qnaName = qnaName;
	}
	public String getQnaEmail() {
		return qnaEmail;
	}
	public void setQnaEmail(String qnaEmail) {
		this.qnaEmail = qnaEmail;
	}
	public String getQnaCategori() {
		return qnaCategori;
	}
	public void setQnaCategori(String qnaCategori) {
		this.qnaCategori = qnaCategori;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaUpfilename() {
		return qnaUpfilename;
	}
	public void setQnaUpfilename(String qnaUpfilename) {
		this.qnaUpfilename = qnaUpfilename;
	}
	public String getQnaOriginfilename() {
		return qnaOriginfilename;
	}
	public void setQnaOriginfilename(String qnaOriginfilename) {
		this.qnaOriginfilename = qnaOriginfilename;
	}
	public String getQnaUpfilename2() {
		return qnaUpfilename2;
	}
	public void setQnaUpfilename2(String qnaUpfilename2) {
		this.qnaUpfilename2 = qnaUpfilename2;
	}
	public String getQnaOriginfilename2() {
		return qnaOriginfilename2;
	}
	public void setQnaOriginfilename2(String qnaOriginfilename2) {
		this.qnaOriginfilename2 = qnaOriginfilename2;
	}
	public String getQnaUpfilename3() {
		return qnaUpfilename3;
	}
	public void setQnaUpfilename3(String qnaUpfilename3) {
		this.qnaUpfilename3 = qnaUpfilename3;
	}
	public String getQnaOriginfilename3() {
		return qnaOriginfilename3;
	}
	public void setQnaOriginfilename3(String qnaOriginfilename3) {
		this.qnaOriginfilename3 = qnaOriginfilename3;
	}
	public Timestamp getQnaRegdate() {
		return qnaRegdate;
	}
	public void setQnaRegdate(Timestamp qnaRegdate) {
		this.qnaRegdate = qnaRegdate;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public int getCeoNo() {
		return ceoNo;
	}
	public void setCeoNo(int ceoNo) {
		this.ceoNo = ceoNo;
	}
	
	@Override
	public String toString() {
		return "QnaVo [qnaNo=" + qnaNo + ", qnaName=" + qnaName + ", qnaEmail=" + qnaEmail + ", qnaCategori="
				+ qnaCategori + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaUpfilename="
				+ qnaUpfilename + ", qnaOriginfilename=" + qnaOriginfilename + ", qnaUpfilename2=" + qnaUpfilename2
				+ ", qnaOriginfilename2=" + qnaOriginfilename2 + ", qnaUpfilename3=" + qnaUpfilename3
				+ ", qnaOriginfilename3=" + qnaOriginfilename3 + ", qnaPwd=" + qnaPwd + ", qnaRegdate=" + qnaRegdate
				+ ", memberNo=" + memberNo + ", ceoNo=" + ceoNo + "]";
	}
}
