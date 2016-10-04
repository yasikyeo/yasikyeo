package com.yasikyeo.app.review.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOMybatis extends SqlSessionDaoSupport implements ReviewDAO{

}
