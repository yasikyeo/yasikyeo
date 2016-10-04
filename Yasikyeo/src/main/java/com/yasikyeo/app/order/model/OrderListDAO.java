package com.yasikyeo.app.order.model;

import java.util.List;
import java.util.Map;

import com.yasikyeo.app.common.SearchVO;

public interface OrderListDAO {

	public int insertOrderList(OrderListVO orderListVo);
	public int insertOrderDet(OrderDetVO orderDetVo);
	public OrderListVO selectOrderList(int orderlistNo);
	public List<OrderDetVO> selectOrderDet(int orderlistNo);
	public List<Map<String, Object>> selectOrderListView(SearchVO searchVo);
	public int selectCountOrderListView(int memberNo);
	public Map<String, Object> selectOrderListViewByListNo(int orderlistNo);
	public List<Integer> selectShopnofromOrderList(int memberNo);
	public List<OrderListAllVo> selectOrderListviews(SearchVO searchVo);
	public int selectCountOrderList(Map<String, Object> map);
}
