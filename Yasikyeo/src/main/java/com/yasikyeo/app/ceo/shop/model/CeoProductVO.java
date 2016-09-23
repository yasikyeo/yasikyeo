package com.yasikyeo.app.ceo.shop.model;

public class CeoProductVO {
	
	private int productNo;
	private String productName;
	private String productExplain;
	private String productPrice;
	private String productOption;
	private String productImage;
	private int shopNo;
	
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
				+ ", productImage=" + productImage + ", shopNo=" + shopNo + "]";
	}
	
	
}
