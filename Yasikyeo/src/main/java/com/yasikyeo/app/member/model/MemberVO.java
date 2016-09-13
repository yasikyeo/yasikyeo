package com.yasikyeo.app.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int member_No;
	private String member_Id; 
	private String member_Pwd;
	private String member_Name;
	private String member_Nickname; 
	private String member_Tel;
	private String member_Email;
	private int member_Birth; 
	private int member_Point; 
	private Timestamp member_Rgedate;
	private String member_Wtihdraw; 
	private String address;
	private String addressDetail;
	private int postcode;
	private String authcode;
	
	public int getMember_No() {
		return member_No;
	}
	public void setMember_No(int member_No) {
		this.member_No = member_No;
	}
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public String getMember_Pwd() {
		return member_Pwd;
	}
	public void setMember_Pwd(String member_Pwd) {
		this.member_Pwd = member_Pwd;
	}
	public String getMember_Name() {
		return member_Name;
	}
	public void setMember_Name(String member_Name) {
		this.member_Name = member_Name;
	}
	public String getMember_Nickname() {
		return member_Nickname;
	}
	public void setMember_Nickname(String member_Nickname) {
		this.member_Nickname = member_Nickname;
	}
	public String getMember_Tel() {
		return member_Tel;
	}
	public void setMember_Tel(String member_Tel) {
		this.member_Tel = member_Tel;
	}
	public String getMember_Email() {
		return member_Email;
	}
	public void setMember_Email(String member_Email) {
		this.member_Email = member_Email;
	}
	public int getMember_Birth() {
		return member_Birth;
	}
	public void setMember_Birth(int member_Birth) {
		this.member_Birth = member_Birth;
	}
	public int getMember_Point() {
		return member_Point;
	}
	public void setMember_Point(int member_Point) {
		this.member_Point = member_Point;
	}
	public Timestamp getMember_Rgedate() {
		return member_Rgedate;
	}
	public void setMember_Rgedate(Timestamp member_Rgedate) {
		this.member_Rgedate = member_Rgedate;
	}
	public String getMember_Wtihdraw() {
		return member_Wtihdraw;
	}
	public void setMember_Wtihdraw(String member_Wtihdraw) {
		this.member_Wtihdraw = member_Wtihdraw;
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
		return "MemberVO [member_No=" + member_No + ", member_Id=" + member_Id + ", member_Pwd=" + member_Pwd
				+ ", member_Name=" + member_Name + ", member_Nickname=" + member_Nickname + ", member_Tel=" + member_Tel
				+ ", member_Email=" + member_Email + ", member_Birth=" + member_Birth + ", member_Point=" + member_Point
				+ ", member_Rgedate=" + member_Rgedate + ", member_Wtihdraw=" + member_Wtihdraw + ", address=" + address
				+ ", addressDetail=" + addressDetail + ", postcode=" + postcode + ", authcode=" + authcode + "]";
	}
}
