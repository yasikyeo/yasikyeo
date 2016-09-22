package com.yasikyeo.app.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int memberNo;
	private String memberId; 
	private String memberPwd;
	private String memberNickname; 
	private String memberTel;
	private String memberEmail;
	private int memberBirth; 
	private int memberPoint; 
	private Timestamp memberRgedate;
	private String memberWtihdraw;
	private String memberImage;
	private String address;
	private String addressDetail;
	private int postcode;
	private String authcode;
	
	
	public String getMemberImage() {
		return memberImage;
	}
	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public int getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(int memberBirth) {
		this.memberBirth = memberBirth;
	}
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	public Timestamp getMemberRgedate() {
		return memberRgedate;
	}
	public void setMemberRgedate(Timestamp memberRgedate) {
		this.memberRgedate = memberRgedate;
	}
	public String getMemberWtihdraw() {
		return memberWtihdraw;
	}
	public void setMemberWtihdraw(String memberWtihdraw) {
		this.memberWtihdraw = memberWtihdraw;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getAuthcode() {
		return authcode;
	}
	public void setAuthcode(String authcode) {
		this.authcode = authcode;
	}
	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPwd=" + memberPwd
				+ ", memberNickname=" + memberNickname + ", memberTel=" + memberTel + ", memberEmail=" + memberEmail
				+ ", memberBirth=" + memberBirth + ", memberPoint=" + memberPoint + ", memberRgedate=" + memberRgedate
				+ ", memberWtihdraw=" + memberWtihdraw + ", memberImage=" + memberImage + ", address=" + address
				+ ", addressDetail=" + addressDetail + ", postcode=" + postcode + ", authcode=" + authcode + "]";
	}
}
