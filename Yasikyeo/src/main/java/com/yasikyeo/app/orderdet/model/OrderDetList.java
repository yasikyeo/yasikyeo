package com.yasikyeo.app.orderdet.model;

import java.util.List;

public class OrderDetList {

	private List<OrderDetVO> orderDetList;

	public List<OrderDetVO> getOrderDetList() {
		return orderDetList;
	}

	public void setOrderDetList(List<OrderDetVO> orderDetList) {
		this.orderDetList = orderDetList;
	}

	@Override
	public String toString() {
		return "OrderDetList [orderDetList=" + orderDetList + "]";
	}
	
	
}
