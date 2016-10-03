package com.yasikyeo.app.bookmark.model;

import java.util.List;
import java.util.Map;

public interface BookmarkService {

	public int insertBookMark(BookmarkVO bookmarkvo);
	public List<BookmarkVO> selectBookmark(int memberNo);
	public int selectCountBookmark(BookmarkVO bookmarkvo);
	public int deleteBookmark(BookmarkVO bookmarkvo);
	public int updateCeoShopBookmarkCnt(Map<String, Integer> map);
}
