package com.yasikyeo.app.review.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDAO reviewDao;

	@Override
	public int insertReview(ReviewVO reviewVo) {
		return reviewDao.insertReview(reviewVo);
	}

	@Override
	public int updateReview(ReviewVO reviewVo) {
		return reviewDao.updateReview(reviewVo);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return reviewDao.deleteReview(reviewNo);
	}

	@Override
	public List<Map<String, Object>> selectReview(SearchVO searchVo) {
		return reviewDao.selectReview(searchVo);
	}

	@Override
	public int selectCountReview(int shopNo) {
		return reviewDao.selectCountReview(shopNo);
	}

	@Override
	public int selectCountReviewByMemberNo(int userNo) {
		return reviewDao.selectCountReviewByMemberNo(userNo);
	}

	@Override
	public ReviewVO selectReviewByNo(int reviewNo) {
		return reviewDao.selectReviewByNo(reviewNo);
	}

	@Override
	public int updateStarScoreShop(Map<String, Object> map) {
		return reviewDao.updateStarScoreShop(map);
	}

	@Override
	public int updateStarScoreShop2(Map<String, Object> map) {
		return reviewDao.updateStarScoreShop2(map);
	}

	@Override
	public int updateStarScoreShop3(Map<String, Object> map) {
		return reviewDao.updateStarScoreShop3(map);
	}

	@Override
	public List<Map<String, Object>> selectReviewbyMemberNO(SearchVO searchVo) {
		return reviewDao.selectReviewbyMemberNO(searchVo);
	}
	
	
}
