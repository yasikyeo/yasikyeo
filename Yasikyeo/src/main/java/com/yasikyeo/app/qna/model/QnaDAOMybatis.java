package com.yasikyeo.app.qna.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
@Repository
public class QnaDAOMybatis extends SqlSessionDaoSupport implements QnaDAO{

	private String namespace = "config.mybatis.mapper.oracle.qna";
	
	@Override
	public int insertQna(QnaVo qnaVo) {
		return getSqlSession().insert(namespace+".insertQna", qnaVo);
	}

}
