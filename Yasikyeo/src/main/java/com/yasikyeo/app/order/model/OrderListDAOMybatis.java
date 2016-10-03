package com.yasikyeo.app.order.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

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

}
