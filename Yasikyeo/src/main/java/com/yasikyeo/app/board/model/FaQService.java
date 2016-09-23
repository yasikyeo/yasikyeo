package com.yasikyeo.app.board.model;

import java.util.List;

import com.yasikyeo.app.common.SearchVO;

public interface FaQService {
	
	//카테고리 상수
	public static final String FAQ_MEMBER="회원가입"; //회원가입
	public static final String FAQ_PAY="바로결제"; //바로결제
	public static final String FAQ_REVIEW="리뷰관리"; //리뷰관리
	public static final String FAQ_PLAY="이용문의"; //이용문의
	public static final String FAQ_ADVERTISE="광고문의"; //광고문의
	public static final String FAQ_DISCOMFORM="불편문의"; //불편문의
	public static final String FAQ_ETC="기타"; //기타
	
	public int insertFaq(FaQVO faqVo);
	public List<FaQVO> selectAllFaQ(SearchVO searchVO);
	public int selectfaqTotalCount(SearchVO searchVO);
	public FaQVO selectByNoFaq(int faqNo);
	public int faqUpdate(FaQVO faqVo);
	public int faqDelete(int faqNo);
}
