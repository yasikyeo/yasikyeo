package com.yasikyeo.app.qna.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService{

	@Autowired
	private QnaDAO qnaDao;
	
	@Override
	public int insertQna(QnaVo qnaVo) {
		return qnaDao.insertQna(qnaVo);
	}

}
