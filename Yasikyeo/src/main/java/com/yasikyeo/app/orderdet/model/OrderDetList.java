package com.yasikyeo.app.orderdet.model;

import java.util.List;

public class OrderDetList {

	private List<OrderDetVO> orderDetList;
	private int totalmenuprice;
	
	
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
		return "OrderDetList [orderDetList=" + orderDetList + ", totalmenuprice=" + totalmenuprice + "]";
	}
	
	
}
