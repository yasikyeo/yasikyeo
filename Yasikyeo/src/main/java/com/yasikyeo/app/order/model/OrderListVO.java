package com.yasikyeo.app.order.model;

import java.sql.Timestamp;

public class OrderListVO {

	private int orderlistNo;
	private Timestamp orderlistRegdate;
	private int orderlistTel;
	private String orderlistAddress;
	private String orderlistMessage;
	private int orderlistPrice;
	private int orderlistPaypoint;
	private int orderlistCargeprice;
	private int orderlistSavepoint;
	private Timestamp orderlistCompleday;
	private String orderlistState; /* 주문상태 defalt 접수대기*/
	private int memberNo;
	private int shopNo;
	public int getOrderlistNo() {
		return orderlistNo;
	}
	public void setOrderlistNo(int orderlistNo) {
		this.orderlistNo = orderlistNo;
	}
	public Timestamp getOrderlistRegdate() {
		return orderlistRegdate;
	}
	public void setOrderlistRegdate(Timestamp orderlistRegdate) {
		this.orderlistRegdate = orderlistRegdate;
	}
	public int getOrderlistTel() {
		return orderlistTel;
	}
	public void setOrderlistTel(int orderlistTel) {
		this.orderlistTel = orderlistTel;
	}
	public String getOrderlistAddress() {
		return orderlistAddress;
	}
	public void setOrderlistAddress(String orderlistAddress) {
		this.orderlistAddress = orderlistAddress;
	}
	public String getOrderlistMessage() {
		return orderlistMessage;
	}
	public void setOrderlistMessage(String orderlistMessage) {
		this.orderlistMessage = orderlistMessage;
	}
	public int getOrderlistPrice() {
		return orderlistPrice;
	}
	public void setOrderlistPrice(int orderlistPrice) {
		this.orderlistPrice = orderlistPrice;
	}
	public int getOrderlistPaypoint() {
		return orderlistPaypoint;
	}
	public void setOrderlistPaypoint(int orderlistPaypoint) {
		this.orderlistPaypoint = orderlistPaypoint;
	}
	public int getOrderlistCargeprice() {
		return orderlistCargeprice;
	}
	public void setOrderlistCargeprice(int orderlistCargeprice) {
		this.orderlistCargeprice = orderlistCargeprice;
	}
	public int getOrderlistSavepoint() {
		return orderlistSavepoint;
	}
	public void setOrderlistSavepoint(int orderlistSavepoint) {
		this.orderlistSavepoint = orderlistSavepoint;
	}
	public Timestamp getOrderlistCompleday() {
		return orderlistCompleday;
	}
	public void setOrderlistCompleday(Timestamp orderlistCompleday) {
		this.orderlistCompleday = orderlistCompleday;
	}
	public String getOrderlistState() {
		return orderlistState;
	}
	public void setOrderlistState(String orderlistState) {
		this.orderlistState = orderlistState;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	@Override
	public String toString() {
		return "OrderListVO [orderlistNo=" + orderlistNo + ", orderlistRegdate=" + orderlistRegdate + ", orderlistTel="
				+ orderlistTel + ", orderlistAddress=" + orderlistAddress + ", orderlistMessage=" + orderlistMessage
				+ ", orderlistPrice=" + orderlistPrice + ", orderlistPaypoint=" + orderlistPaypoint
				+ ", orderlistCargeprice=" + orderlistCargeprice + ", orderlistSavepoint=" + orderlistSavepoint
				+ ", orderlistCompleday=" + orderlistCompleday + ", orderlistState=" + orderlistState + ", memberNo="
				+ memberNo + ", shopNo=" + shopNo + "]";
	}
	
}
