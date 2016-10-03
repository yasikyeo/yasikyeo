package com.yasikyeo.app.bookmark.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookmarkServiceImpl implements BookmarkService{

	@Autowired
	private BookmarkDAO bookmarkDao;

	@Override
	public int insertBookMark(BookmarkVO bookmarkvo) {
		return bookmarkDao.insertBookMark(bookmarkvo);
	}

	@Override
	public List<BookmarkVO> selectBookmark(int memberNo) {
		return bookmarkDao.selectBookmark(memberNo);
	}

	@Override
	public int selectCountBookmark(BookmarkVO bookmarkvo) {
		return bookmarkDao.selectCountBookmark(bookmarkvo);
	}

	@Override
	public int deleteBookmark(BookmarkVO bookmarkvo) {
		return bookmarkDao.deleteBookmark(bookmarkvo);
	}

	@Override
	public int updateCeoShopBookmarkCnt(Map<String, Integer> map) {
		return bookmarkDao.updateCeoShopBookmarkCnt(map);
	}
}
