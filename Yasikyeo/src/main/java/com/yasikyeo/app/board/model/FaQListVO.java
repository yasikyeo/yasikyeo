package com.yasikyeo.app.board.model;

import java.util.List;

public class FaQListVO {
	private List<FaQVO> faqItems;

	public List<FaQVO> getFaqItems() {
		return faqItems;
	}

	public void setFaqItems(List<FaQVO> faqItems) {
		this.faqItems = faqItems;
	}

	@Override
	public String toString() {
		return "FaQListVO [faqItems=" + faqItems + "]";
	}
	
	
}
