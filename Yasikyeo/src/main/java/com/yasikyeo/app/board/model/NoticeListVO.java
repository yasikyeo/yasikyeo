package com.yasikyeo.app.board.model;

import java.util.List;

public class NoticeListVO {
	private List<NoticeVO> noticeItems;

	public List<NoticeVO> getNoticeItems() {
		return noticeItems;
	}

	public void setNoticeItems(List<NoticeVO> noticeItems) {
		this.noticeItems = noticeItems;
	}

	@Override
	public String toString() {
		return "NoticeListVO [noticeItems=" + noticeItems + "]";
	}
	
	
}
