package com.yasikyeo.app.categori.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CategoriDAOMybatis extends SqlSessionDaoSupport implements CategoriDAO{

	private String namespace="config.mybatis.mapper.oracle.categori";

	@Override
	public List<CategoriVO> selectByShopNo(int shopNo) {
		return getSqlSession().selectList(namespace+".selectByShopNo", shopNo);
	}
	
	
}
