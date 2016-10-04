package com.yasikyeo.app.review.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.review.model.ReviewService;
import com.yasikyeo.app.review.model.ReviewVO;

@Controller
public class ReviewController {

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private FileUploadWebUtil fileUploadWebUil;
	
	@RequestMapping("/addreview.do")
	public String addreview(@ModelAttribute ReviewVO reviewVo,
				HttpServletRequest request,Model model){
		logger.info("파라미터 reviewVo={}",reviewVo);
		
		List<Map<String, Object>> fileList = fileUploadWebUil.fileUpload(request, fileUploadWebUil.REVIEW_IMAGE_UPLOAD);
		//새로 파일을 업로드하는 경우
		reviewVo.setReviewImage1("");
		reviewVo.setReviewImage2("");
		reviewVo.setReviewImage3("");
		
		if(fileList!=null && !fileList.isEmpty()){
			String fileName="";
			logger.info("fileList.size={}",fileList.size());
									
			for(int i=0; i<fileList.size();i++){
				Map<String, Object> fileMap = fileList.get(i);
				fileName=(String) fileMap.get("fileName");
				if(i==0){
					reviewVo.setReviewImage1(fileName);
				}else if(i==1){
					reviewVo.setReviewImage2(fileName);
				}else if(i==2){
					reviewVo.setReviewImage3(fileName);
				}
			}
		}
		
		logger.info("리뷰 DB 작성바로전 reviewVo={}",reviewVo);
		int cnt = reviewService.insertReview(reviewVo);
		logger.info("리뷰 작성 결과 cnt={}",cnt);
		
		return "redirect:/shop/client_shop_det.do?no="+reviewVo.getShopNo();
	}
}
