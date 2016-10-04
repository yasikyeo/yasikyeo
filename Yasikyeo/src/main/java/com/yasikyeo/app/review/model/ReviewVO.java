package com.yasikyeo.app.review.model;

import java.sql.Timestamp;

public class ReviewVO {

	private int reviewHit; /* 구매후기추천수 */
	private int ceoNo; /* 사장님코드 */
	private int shopNo; /* 업소코드 */
	private double reviewStarscore;  /* 구매후기별점 */
	private String reviewNickname; /* 구매후기닉네임 */
	private String reviewContent; /* 구매후기내용 */
	private Timestamp reviewRegdate; /* 구매후기작성일 */
	private int reviewNo; /* 구매후기글번호 */
	private int memberNo; /* 회원코드 */
	private String reviewBlock; /* 구매후기차단 */
	
	public int getReviewHit() {
		return reviewHit;
	}
	public void setReviewHit(int reviewHit) {
		this.reviewHit = reviewHit;
	}
	public int getCeoNo() {
		return ceoNo;
	}
	public void setCeoNo(int ceoNo) {
		this.ceoNo = ceoNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public double getReviewStarscore() {
		return reviewStarscore;
	}
	public void setReviewStarscore(double reviewStarscore) {
		this.reviewStarscore = reviewStarscore;
	}
	public String getReviewNickname() {
		return reviewNickname;
	}
	public void setReviewNickname(String reviewNickname) {
		this.reviewNickname = reviewNickname;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Timestamp getReviewRegdate() {
		return reviewRegdate;
	}
	public void setReviewRegdate(Timestamp reviewRegdate) {
		this.reviewRegdate = reviewRegdate;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getReviewBlock() {
		return reviewBlock;
	}
	public void setReviewBlock(String reviewBlock) {
		this.reviewBlock = reviewBlock;
	}
	@Override
	public String toString() {
		return "ReviewVO [reviewHit=" + reviewHit + ", ceoNo=" + ceoNo + ", shopNo=" + shopNo + ", reviewStarscore="
				+ reviewStarscore + ", reviewNickname=" + reviewNickname + ", reviewContent=" + reviewContent
				+ ", reviewRegdate=" + reviewRegdate + ", reviewNo=" + reviewNo + ", memberNo=" + memberNo
				+ ", reviewBlock=" + reviewBlock + "]";
	}
}
