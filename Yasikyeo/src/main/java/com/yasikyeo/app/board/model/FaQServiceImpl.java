package com.yasikyeo.app.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class FaQServiceImpl implements FaQService{

	@Autowired
	private FaQDAO faqDao;
	
	@Override
	public int insertFaq(FaQVO faqVo) {
		return faqDao.insertFaQ(faqVo);
	}

	@Override
	public List<FaQVO> selectAllFaQ(SearchVO searchVO) {
		return faqDao.selectAllFaQ(searchVO);
	}

	@Override
	public int selectfaqTotalCount(SearchVO searchVO) {
		return faqDao.selectfaqTotalCount(searchVO);
	}
	
	
}
