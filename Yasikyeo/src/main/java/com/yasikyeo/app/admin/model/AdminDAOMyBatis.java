package com.yasikyeo.app.admin.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOMyBatis extends SqlSessionDaoSupport implements AdminDAO{

}
