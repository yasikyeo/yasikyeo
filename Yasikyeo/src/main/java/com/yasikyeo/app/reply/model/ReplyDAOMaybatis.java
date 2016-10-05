package com.yasikyeo.app.reply.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOMaybatis extends SqlSessionDaoSupport implements ReplyDAO{

}
