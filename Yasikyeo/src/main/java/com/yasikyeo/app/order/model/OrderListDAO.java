package com.yasikyeo.app.order.model;

public interface OrderListDAO {

	public int insertOrderList(OrderListVO orderListVo);
	public int insertOrderDet(OrderDetVO orderDetVo);
}
