package com.yasikyeo.app.board.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;


@Repository
public class FaQDAOMyBatis extends SqlSessionDaoSupport implements FaQDAO{
		
	private final String namespace="config.mybatis.mapper.oracle.faA";
	
	@Override
	public int insertFaQ(FaQVO faqVo) {
		return getSqlSession().insert(namespace+".insertfaq",faqVo);
	}

	@Override
	public List<FaQVO> selectAllFaQ(SearchVO searchVO) {
		return getSqlSession().selectList(namespace+".selectAllFaQ",searchVO);
	}

	@Override
	public int selectfaqTotalCount(SearchVO searchVO) {
		return getSqlSession().selectOne(namespace+".selectfaqTotalCount",searchVO);
	}

}
