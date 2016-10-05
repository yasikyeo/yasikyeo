package com.yasikyeo.app.review.model;

import java.util.List;
import java.util.Map;

import com.yasikyeo.app.common.SearchVO;

public interface ReviewService {

	public int insertReview(ReviewVO reviewVo);
	public int updateReview(ReviewVO reviewVo);
	public int deleteReview(int reviewNo);
	public List<Map<String, Object>> selectReview(SearchVO searchVo);
	public int selectCountReview(int shopNo);
	public int selectCountReviewByMemberNo(Map<String, Object>map);
	public ReviewVO selectReviewByNo(int reviewNo);
	public int updateStarScoreShop(Map<String, Object>map);
	public int updateStarScoreShop2(Map<String, Object>map);
	public int updateStarScoreShop3(Map<String, Object>map);
}
