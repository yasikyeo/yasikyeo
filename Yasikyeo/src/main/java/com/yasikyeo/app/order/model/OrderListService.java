package com.yasikyeo.app.order.model;

import java.util.List;
import java.util.Map;

public interface OrderListService {

	public Map<String, Integer> insertOrderList(OrderListVO orderListVo,List<OrderDetVO> odList);
}
