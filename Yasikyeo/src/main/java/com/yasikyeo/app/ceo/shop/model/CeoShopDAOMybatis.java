package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO2;

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

	@Override
	public List<CeoShopVO> selectShopByCategory(SearchVO2 searchVo2) {
		return getSqlSession().selectList(namespace+".selectShopByCategory", searchVo2);
	}

	@Override
	public int countShopByCategory(SearchVO2 searchVo2) {
		return getSqlSession().selectOne(namespace+".countShopByCategory", searchVo2);
	}

	@Override
	public CeoShopVO selectByShopNo(int shopNo) {
		return getSqlSession().selectOne(namespace+".selectByShopNo", shopNo);
	}

	@Override
	public List<CeoProductVO> productSelectByShopNo(int shopNo) {
		return getSqlSession().selectList(namespace+".productSelectByShopNo", shopNo);
	}

	@Override
	public int updateCeoShop(CeoShopVO ceoShopVo) {
		return getSqlSession().update(namespace+".updateCeoShop", ceoShopVo);
	}

	@Override
	public int countShop(int shopNo) {
		return getSqlSession().selectOne(namespace+".countShop", shopNo);
	}
	
}









