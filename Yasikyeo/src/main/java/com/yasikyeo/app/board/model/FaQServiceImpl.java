package com.yasikyeo.app.board.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaQServiceImpl implements FaQService{

	@Autowired
	private FaQDAO faqDao;
	
	@Override
	public int insertFaq(FaQVO faqVo) {
		return faqDao.insertFaQ(faqVo);
	}
	
	
}
