package com.yasikyeo.app.order.model;

import java.util.List;

public class OrderListAllVo {

	private OrderListVO orderlistVo;
	
	private List<OrderDetVO> orderDetList;
	
	private String shopName;

	
	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public OrderListVO getOrderlistVo() {
		return orderlistVo;
	}

	public void setOrderlistVo(OrderListVO orderlistVo) {
		this.orderlistVo = orderlistVo;
	}

	public List<OrderDetVO> getOrderDetList() {
		return orderDetList;
	}

	public void setOrderDetList(List<OrderDetVO> orderDetList) {
		this.orderDetList = orderDetList;
	}

	@Override
	public String toString() {
		return "OrderListAllVo [orderlistVo=" + orderlistVo + ", orderDetList=" + orderDetList + ", shopName="
				+ shopName + "]";
	}
	
	
	
}
