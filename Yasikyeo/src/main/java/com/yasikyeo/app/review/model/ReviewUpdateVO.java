package com.yasikyeo.app.review.model;

public class ReviewUpdateVO {

	private ReviewVO reviewVo;
	private String deleteImage1; 
	private String deleteImage2; 
	private String deleteImage3;
	public ReviewVO getReviewVo() {
		return reviewVo;
	}
	public void setReviewVo(ReviewVO reviewVo) {
		this.reviewVo = reviewVo;
	}
	public String getDeleteImage1() {
		return deleteImage1;
	}
	public void setDeleteImage1(String deleteImage1) {
		this.deleteImage1 = deleteImage1;
	}
	public String getDeleteImage2() {
		return deleteImage2;
	}
	public void setDeleteImage2(String deleteImage2) {
		this.deleteImage2 = deleteImage2;
	}
	public String getDeleteImage3() {
		return deleteImage3;
	}
	public void setDeleteImage3(String deleteImage3) {
		this.deleteImage3 = deleteImage3;
	}
	@Override
	public String toString() {
		return "ReviewUpdateVO [reviewVo=" + reviewVo + ", deleteImage1=" + deleteImage1 + ", deleteImage2="
				+ deleteImage2 + ", deleteImage3=" + deleteImage3 + "]";
	}
}
