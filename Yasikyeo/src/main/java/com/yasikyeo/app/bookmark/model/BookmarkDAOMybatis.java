package com.yasikyeo.app.bookmark.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BookmarkDAOMybatis extends SqlSessionDaoSupport implements BookmarkDAO{

	private String namespace="config.mybatis.mapper.oracle.bookmark";
	
	@Override
	public int insertBookMark(BookmarkVO bookmarkvo) {
		return getSqlSession().insert(namespace+".insertBookMark", bookmarkvo);
	}

	@Override
	public List<BookmarkVO> selectBookmark(int memberNo) {
		return getSqlSession().selectList(namespace+".selectBookmark", memberNo);
	}

	@Override
	public int selectCountBookmark(BookmarkVO bookmarkvo) {
		return getSqlSession().selectOne(namespace+".selectCountBookmark", bookmarkvo);
	}

	@Override
	public int deleteBookmark(BookmarkVO bookmarkvo) {
		return getSqlSession().delete(namespace+".deleteBookmark", bookmarkvo);
	}

	@Override
	public int updateCeoShopBookmarkCnt(Map<String, Integer> map) {
		return getSqlSession().update(namespace+".updateCeoShopBookmarkCnt", map);
	}

	
}
