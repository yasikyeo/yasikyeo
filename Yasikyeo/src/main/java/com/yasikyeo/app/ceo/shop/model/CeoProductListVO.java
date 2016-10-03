package com.yasikyeo.app.ceo.shop.model;

import java.util.List;

public class CeoProductListVO {
	private List<CeoProductVO> pdItems;

	public List<CeoProductVO> getPdItems() {
		return pdItems;
	}

	public void setPdItems(List<CeoProductVO> pdItems) {
		this.pdItems = pdItems;
	}

	@Override
	public String toString() {
		return "ProductListVO [pdItems=" + pdItems + "]";
	}

	
	
}
