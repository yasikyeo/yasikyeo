package com.yasikyeo.app.ceo.shop.model;

public class CeoShopVO {
	
	private int shopNo;
	private String shopCategori;
	private String shopName;
	private String shopExplain;
	private int shopMinprice;
	private String shopOpentime;
	private String shopClosetime;
	private String shopTel;
	private String shopOrigin;
	private String address;
	private String adressDetail;
	private String postcode;
	private String shopAccountname;
	private String shopAccount;
	private String shopLicensee;
	private int shopHit;
	private int shopAvgreview;
	private int shopReviewcnt;
	private int shopCeoreplycnt;
	
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public String getShopCategori() {
		return shopCategori;
	}
	public void setShopCategori(String shopCategori) {
		this.shopCategori = shopCategori;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopExplain() {
		return shopExplain;
	}
	public void setShopExplain(String shopExplain) {
		this.shopExplain = shopExplain;
	}
	public int getShopMinprice() {
		return shopMinprice;
	}
	public void setShopMinprice(int shopMinprice) {
		this.shopMinprice = shopMinprice;
	}
	public String getShopOpentime() {
		return shopOpentime;
	}
	public void setShopOpentime(String shopOpentime) {
		this.shopOpentime = shopOpentime;
	}
	public String getShopClosetime() {
		return shopClosetime;
	}
	public void setShopClosetime(String shopClosetime) {
		this.shopClosetime = shopClosetime;
	}
	public String getShopTel() {
		return shopTel;
	}
	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}
	public String getShopOrigin() {
		return shopOrigin;
	}
	public void setShopOrigin(String shopOrigin) {
		this.shopOrigin = shopOrigin;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAdressDetail() {
		return adressDetail;
	}
	public void setAdressDetail(String adressDetail) {
		this.adressDetail = adressDetail;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getShopAccountname() {
		return shopAccountname;
	}
	public void setShopAccountname(String shopAccountname) {
		this.shopAccountname = shopAccountname;
	}
	public String getShopAccount() {
		return shopAccount;
	}
	public void setShopAccount(String shopAccount) {
		this.shopAccount = shopAccount;
	}
	public String getShopLicensee() {
		return shopLicensee;
	}
	public void setShopLicensee(String shopLicensee) {
		this.shopLicensee = shopLicensee;
	}
	public int getShopHit() {
		return shopHit;
	}
	public void setShopHit(int shopHit) {
		this.shopHit = shopHit;
	}
	public int getShopAvgreview() {
		return shopAvgreview;
	}
	public void setShopAvgreview(int shopAvgreview) {
		this.shopAvgreview = shopAvgreview;
	}
	public int getShopReviewcnt() {
		return shopReviewcnt;
	}
	public void setShopReviewcnt(int shopReviewcnt) {
		this.shopReviewcnt = shopReviewcnt;
	}
	public int getShopCeoreplycnt() {
		return shopCeoreplycnt;
	}
	public void setShopCeoreplycnt(int shopCeoreplycnt) {
		this.shopCeoreplycnt = shopCeoreplycnt;
	}
	
	@Override
	public String toString() {
		return "CeoShopVO [shopNo=" + shopNo + ", shopCategori=" + shopCategori + ", shopName=" + shopName
				+ ", shopExplain=" + shopExplain + ", shopMinprice=" + shopMinprice + ", shopOpentime=" + shopOpentime
				+ ", shopClosetime=" + shopClosetime + ", shopTel=" + shopTel + ", shopOrigin=" + shopOrigin
				+ ", address=" + address + ", adressDetail=" + adressDetail + ", postcode=" + postcode
				+ ", shopAccountname=" + shopAccountname + ", shopAccount=" + shopAccount + ", shopLicensee="
				+ shopLicensee + ", shopHit=" + shopHit + ", shopAvgreview=" + shopAvgreview + ", shopReviewcnt="
				+ shopReviewcnt + ", shopCeoreplycnt=" + shopCeoreplycnt + "]";
	}
}
