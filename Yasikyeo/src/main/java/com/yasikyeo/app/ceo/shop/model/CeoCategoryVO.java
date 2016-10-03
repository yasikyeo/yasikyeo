package com.yasikyeo.app.ceo.shop.model;

public class CeoCategoryVO {
	
	private int categoriNo;
	private String categoriName;
	private String categoriExplain;
	private int shopNo;
	
	public int getCategoriNo() {
		return categoriNo;
	}
	public void setCategoriNo(int categoriNo) {
		this.categoriNo = categoriNo;
	}
	public String getCategoriName() {
		return categoriName;
	}
	public void setCategoriName(String categoriName) {
		this.categoriName = categoriName;
	}
	public String getCategoriExplain() {
		return categoriExplain;
	}
	public void setCategoriExplain(String categoriExplain) {
		this.categoriExplain = categoriExplain;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	
	@Override
	public String toString() {
		return "CeoCategoryVO [categoriNo=" + categoriNo + ", categoriName=" + categoriName + ", categoriExplain="
				+ categoriExplain + ", shopNo=" + shopNo + "]";
	}
	
}
