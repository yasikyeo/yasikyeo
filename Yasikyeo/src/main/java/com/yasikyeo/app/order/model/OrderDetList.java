package com.yasikyeo.app.order.model;

import java.util.List;

public class OrderDetList {

	private List<OrderDetVO> orderDetList;
	private int totalmenuprice;
	private int shopno;
	
	
	public int getShopno() {
		return shopno;
	}

	public void setShopno(int shopno) {
		this.shopno = shopno;
	}

	public int getTotalmenuprice() {
		return totalmenuprice;
	}

	public void setTotalmenuprice(int totalmenuprice) {
		this.totalmenuprice = totalmenuprice;
	}

	public List<OrderDetVO> getOrderDetList() {
		return orderDetList;
	}

	public void setOrderDetList(List<OrderDetVO> orderDetList) {
		this.orderDetList = orderDetList;
	}

	@Override
	public String toString() {
		return "OrderDetList [orderDetList=" + orderDetList + ", totalmenuprice=" + totalmenuprice + ", shopno="
				+ shopno + "]";
	}
	
	
}
