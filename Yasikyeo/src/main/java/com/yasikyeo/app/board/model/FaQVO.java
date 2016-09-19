package com.yasikyeo.app.board.model;

public class FaQVO {
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private String faqUpfilename;
	private String faqCategori;
	private int managerNo;
	
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public String getFaqUpfilename() {
		return faqUpfilename;
	}
	public void setFaqUpfilename(String faqUpfilename) {
		this.faqUpfilename = faqUpfilename;
	}
	public String getFaqCategori() {
		return faqCategori;
	}
	public void setFaqCategori(String faqCategori) {
		this.faqCategori = faqCategori;
	}
	public int getManagerNo() {
		return managerNo;
	}
	public void setManagerNo(int managerNo) {
		this.managerNo = managerNo;
	}
	
	@Override
	public String toString() {
		return "FaQVO [faqNo=" + faqNo + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent + ", faqUpfilename="
				+ faqUpfilename + ", faqCategori=" + faqCategori + ", managerNo=" + managerNo + "]";
	}
	
	
}
