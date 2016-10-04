package com.yasikyeo.app.ceo.shop.model;

public class CeoOrderDetVO {
	private int orderdetNo;
	private String orderdetProductname;
	private String orderdetSelectproduct;
	private int orderdetSelectprice;
	private String orderdetOption;
	private int orderdetOptionprice;
	private int orderdetQty;
	private int orderdetTotalprice;
	private int orderlistNo;
	private String orderlistAddress;
	private String orderlistMessage;
	private String orderlistTel;
	private String orderlistState;
	private int shopNo;
	
	public int getOrderdetNo() {
		return orderdetNo;
	}
	public void setOrderdetNo(int orderdetNo) {
		this.orderdetNo = orderdetNo;
	}
	public String getOrderdetProductname() {
		return orderdetProductname;
	}
	public void setOrderdetProductname(String orderdetProductname) {
		this.orderdetProductname = orderdetProductname;
	}
	public String getOrderdetSelectproduct() {
		return orderdetSelectproduct;
	}
	public void setOrderdetSelectproduct(String orderdetSelectproduct) {
		this.orderdetSelectproduct = orderdetSelectproduct;
	}
	public int getOrderdetSelectprice() {
		return orderdetSelectprice;
	}
	public void setOrderdetSelectprice(int orderdetSelectprice) {
		this.orderdetSelectprice = orderdetSelectprice;
	}
	public String getOrderdetOption() {
		return orderdetOption;
	}
	public void setOrderdetOption(String orderdetOption) {
		this.orderdetOption = orderdetOption;
	}
	public int getOrderdetOptionprice() {
		return orderdetOptionprice;
	}
	public void setOrderdetOptionprice(int orderdetOptionprice) {
		this.orderdetOptionprice = orderdetOptionprice;
	}
	public int getOrderdetQty() {
		return orderdetQty;
	}
	public void setOrderdetQty(int orderdetQty) {
		this.orderdetQty = orderdetQty;
	}
	public int getOrderdetTotalprice() {
		return orderdetTotalprice;
	}
	public void setOrderdetTotalprice(int orderdetTotalprice) {
		this.orderdetTotalprice = orderdetTotalprice;
	}
	public int getOrderlistNo() {
		return orderlistNo;
	}
	public void setOrderlistNo(int orderlistNo) {
		this.orderlistNo = orderlistNo;
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
	public String getOrderlistTel() {
		return orderlistTel;
	}
	public void setOrderlistTel(String orderlistTel) {
		this.orderlistTel = orderlistTel;
	}
	public String getOrderlistState() {
		return orderlistState;
	}
	public void setOrderlistState(String orderlistState) {
		this.orderlistState = orderlistState;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	
	@Override
	public String toString() {
		return "CeoOrderDetVO [orderdetNo=" + orderdetNo + ", orderdetProductname=" + orderdetProductname
				+ ", orderdetSelectproduct=" + orderdetSelectproduct + ", orderdetSelectprice=" + orderdetSelectprice
				+ ", orderdetOption=" + orderdetOption + ", orderdetOptionprice=" + orderdetOptionprice
				+ ", orderdetQty=" + orderdetQty + ", orderdetTotalprice=" + orderdetTotalprice + ", orderlistNo="
				+ orderlistNo + ", orderlistAddress=" + orderlistAddress + ", orderlistMessage=" + orderlistMessage
				+ ", orderlistTel=" + orderlistTel + ", orderlistState=" + orderlistState + ", shopNo=" + shopNo + "]";
	}
	
	
}
