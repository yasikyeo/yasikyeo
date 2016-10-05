package com.yasikyeo.app.review.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;

@Repository
public class ReviewDAOMybatis extends SqlSessionDaoSupport implements ReviewDAO{

	private String namespace = "config.mybatis.mapper.oracle.review";
	@Override
	public int insertReview(ReviewVO reviewVo) {
		return getSqlSession().insert(namespace+".insertReview", reviewVo);
	}

	@Override
	public int updateReview(ReviewVO reviewVo) {
		return getSqlSession().update(namespace+".updateReview", reviewVo);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return getSqlSession().delete(namespace+".deleteReview", reviewNo);
	}

	@Override
	public List<Map<String, Object>> selectReview(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectReview", searchVo);
	}

	@Override
	public int selectCountReview(int shopNo) {
		return getSqlSession().selectOne(namespace+".selectCountReview", shopNo);
	}

	@Override
	public int selectCountReviewByMemberNo(Map<String, Object> map) {
		return getSqlSession().selectOne(namespace+".selectCountReviewByMemberNo", map);
	}

	@Override
	public ReviewVO selectReviewByNo(int reviewNo) {
		return getSqlSession().selectOne(namespace+".selectReviewByNo", reviewNo);
	}

}
