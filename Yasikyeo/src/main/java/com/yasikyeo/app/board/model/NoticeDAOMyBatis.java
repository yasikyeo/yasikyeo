package com.yasikyeo.app.board.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.yasikyeo.app.common.SearchVO;

@Repository
public class NoticeDAOMyBatis extends SqlSessionDaoSupport implements NoticeDAO{
	
	private String namespace="config.mybatis.mapper.oracle.notice";
	
	private static final Logger logger
	= LoggerFactory.getLogger(NoticeDAOMyBatis.class);

	@Override
	public int insertNotice(NoticeVO noticeVo) {
		return getSqlSession().insert(namespace+".insertNotice", noticeVo);
	}

	@Override
	public List<NoticeVO> selectAllNotice(SearchVO searchVO) {
		return getSqlSession().selectList(namespace+".selectAllNotice",searchVO);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount",searchVo);
	}

	@Override
	public NoticeVO selectByNoNotice(int noticeNo) {
		return getSqlSession().selectOne(namespace+".selectByNoNotice",noticeNo);
	}

	@Override
	public int noticeUpdate(NoticeVO noticeVo) {
		return getSqlSession().update(namespace+".noticeUpdate",noticeVo);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return getSqlSession().delete(namespace+".deleteNotice",noticeNo);
	}
	
	
}
