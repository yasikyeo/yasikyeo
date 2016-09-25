package com.yasikyeo.app.ceo.shop.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CeoShopDAOMybatis extends SqlSessionDaoSupport	implements CeoShopDAO{

	private String namespace="config.mybatis.mapper.oracle.ceoshop";

	@Override
	public int insertCeoShop(CeoShopVO ceoShopVo) {
		return getSqlSession().insert(namespace+".insertCeoShop", ceoShopVo);
	}

	@Override
	public int selectCeoNo(String ceoId) {
		return getSqlSession().selectOne(namespace+".selectCeoNo", ceoId);
	}

	@Override
	public int selectShop(int ceoNo) {
		return getSqlSession().selectOne(namespace+".selectShop", ceoNo);
	}

	@Override
	public int insertCeoProduct(CeoProductVO ceoProductVo) {
		return getSqlSession().insert(namespace+".insertCeoProduct", ceoProductVo);
	}

	@Override
	public int selectShopNo(int ceoNo) {
		return getSqlSession().selectOne(namespace+".selectShopNo",ceoNo);
	}

	@Override
	public CeoShopVO selectCeoShop(int ceoNo) {
		return getSqlSession().selectOne(namespace+".selectCeoShop",ceoNo);
	}
	
}









