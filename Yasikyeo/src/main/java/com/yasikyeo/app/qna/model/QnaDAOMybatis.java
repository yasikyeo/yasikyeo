package com.yasikyeo.app.qna.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
@Repository
public class QnaDAOMybatis extends SqlSessionDaoSupport implements QnaDAO{

}
