package com.yasikyeo.app.ceo.shop.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CeoShopDAOMybatis extends SqlSessionDaoSupport
	implements CeoShopDAO{

	private String namespace="config.mybatis.mapper.oracle.ceoshop";

	@Override
	public int insertCeoShop(CeoShopVO ceoShopVo) {
		return getSqlSession().insert(namespace+".insertCeoShop", ceoShopVo);
	}
	
}









