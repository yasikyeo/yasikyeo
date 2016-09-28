package com.yasikyeo.app.categori.model;

import com.yasikyeo.app.common.SearchVO;

public class CategoriVO extends SearchVO{
	
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
		return "CategoriVO [categoriNo=" + categoriNo + ", categoriName=" + categoriName + ", categoriExplain="
				+ categoriExplain + ", shopNo=" + shopNo + "]";
	}
	
	
}
