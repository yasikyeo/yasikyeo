package com.yasikyeo.app.order.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;

@Repository
public class OrderListDAOMybatis extends SqlSessionDaoSupport implements OrderListDAO{

	private String namespace="config.mybatis.mapper.oracle.order";
	
	@Override
	public int insertOrderList(OrderListVO orderListVo) {
		return getSqlSession().insert(namespace+".insertOrderList", orderListVo);
	}

	@Override
	public int insertOrderDet(OrderDetVO orderDetVo) {
		return getSqlSession().insert(namespace+".insertOrderDet", orderDetVo);
	}

	@Override
	public OrderListVO selectOrderList(int orderlistNo) {
		return getSqlSession().selectOne(namespace+".selectOrderList", orderlistNo);
	}

	@Override
	public List<OrderDetVO> selectOrderDet(int orderlistNo) {
		return getSqlSession().selectList(namespace+".selectOrderDet", orderlistNo);
	}

	@Override
	public List<Map<String, Object>> selectOrderListView(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectOrderListView", searchVo);
	}

	@Override
	public int selectCountOrderListView(int memberNo) {
		return getSqlSession().selectOne(namespace+".selectCountOrderListView", memberNo);
	}

	@Override
	public Map<String, Object> selectOrderListViewByListNo(int orderlistNo) {
		return getSqlSession().selectOne(namespace+".selectOrderListViewByListNo", orderlistNo);
	}

	@Override
	public List<Integer> selectShopnofromOrderList(int memberNo) {
		return getSqlSession().selectList(namespace+".selectShopnofromOrderList", memberNo);
	}

	@Override
	public List<OrderListAllVo> selectOrderListviews(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectOrderListviews", searchVo);
	}

	@Override
	public int selectCountOrderList(Map<String, Object> map) {
		return getSqlSession().selectOne(namespace+".selectCountOrderList", map);
	}

}
