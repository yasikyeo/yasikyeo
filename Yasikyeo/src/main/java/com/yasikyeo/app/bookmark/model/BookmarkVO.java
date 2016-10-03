package com.yasikyeo.app.bookmark.model;

public class BookmarkVO {

	private int bookmarkNo;/* 즐겨찾기코드 */
	private int shopNo;/* 업소코드 */
	private int memberNo; /* 회원코드 */
	
	
	public BookmarkVO() {
		super();
	}
	public BookmarkVO(int shopNo, int memberNo) {
		super();
		this.shopNo = shopNo;
		this.memberNo = memberNo;
	}
	public int getBookmarkNo() {
		return bookmarkNo;
	}
	public void setBookmarkNo(int bookmarkNo) {
		this.bookmarkNo = bookmarkNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	@Override
	public String toString() {
		return "BookmarkVO [bookmarkNo=" + bookmarkNo + ", shopNo=" + shopNo + ", memberNo=" + memberNo + "]";
	}
	
	
	
	
	
}
