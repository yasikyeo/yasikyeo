package com.yasikyeo.app.ceo.shop.model;

import java.sql.Timestamp;

public class CeoProductVO {
	
	private int productNo;
	private String productName;
	private String productExplain;
	private String productPrice;
	private String productOption;
	private Timestamp productRegdate;
	private String productRecommend;
	private String productImage;
	private int categoriNo;
	private int shopNo;
	
		
	public int getCategoriNo() {
		return categoriNo;
	}
	public void setCategoriNo(int categoriNo) {
		this.categoriNo = categoriNo;
	}
	public Timestamp getProductRegdate() {
		return productRegdate;
	}
	public void setProductRegdate(Timestamp productRegdate) {
		this.productRegdate = productRegdate;
	}
	public String getProductRecommend() {
		return productRecommend;
	}
	public void setProductRecommend(String productRecommend) {
		this.productRecommend = productRecommend;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductExplain() {
		return productExplain;
	}
	public void setProductExplain(String productExplain) {
		this.productExplain = productExplain;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductOption() {
		return productOption;
	}
	public void setProductOption(String productOption) {
		this.productOption = productOption;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	@Override
	public String toString() {
		return "CeoProductVO [productNo=" + productNo + ", productName=" + productName + ", productExplain="
				+ productExplain + ", productPrice=" + productPrice + ", productOption=" + productOption
				+ ", productRegdate=" + productRegdate + ", productRecommend=" + productRecommend + ", productImage="
				+ productImage + ", categoriNo=" + categoriNo + ", shopNo=" + shopNo + "]";
	}
	
	
}
