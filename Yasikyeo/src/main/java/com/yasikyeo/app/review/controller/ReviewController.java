package com.yasikyeo.app.review.controller;

import java.io.File;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.review.model.ReviewService;
import com.yasikyeo.app.review.model.ReviewUpdateVO;
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
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("reviewStarscore", reviewVo.getReviewStarscore());
		map.put("shopNo", reviewVo.getShopNo());
		
		int result = reviewService.updateStarScoreShop(map);
		logger.info("상점 별점평균 업데이트 결과 result = {}",result);
		
		return "redirect:/shop/client_shop_det.do?no="+reviewVo.getShopNo();
	}
	
	@RequestMapping("/updatereview.do")
	public String updateview(@ModelAttribute ReviewUpdateVO reviewUpdateVo,
							HttpServletRequest request,Model model){
		logger.info("reviewUpdateVo={}",reviewUpdateVo);
		ReviewVO reviewVo = reviewUpdateVo.getReviewVo();
		ReviewVO orldreviewVo = reviewService.selectReviewByNo(reviewVo.getReviewNo());
		List<Map<String, Object>> fileList = fileUploadWebUil.fileUpload(request, fileUploadWebUil.REVIEW_IMAGE_UPLOAD);
		
		if(fileList!=null && !fileList.isEmpty()){
			String fileName="";
			logger.info("fileList.size={}",fileList.size());
									
			for(Map<String, Object> fileMap: fileList){
				 fileName=(String) fileMap.get("fileName");
				 if(reviewVo.getReviewImage1()==null){
					 reviewVo.setReviewImage1(fileName);
				 }else if(reviewVo.getReviewImage2()==null){
					 reviewVo.setReviewImage2(fileName);
				 }else if(reviewVo.getReviewImage3()==null){
					 reviewVo.setReviewImage3(fileName);
				 }
			}//for
		}
		if(reviewVo.getReviewImage1()==null){
			reviewVo.setReviewImage1("");
		}
		if(reviewVo.getReviewImage2()==null){
			reviewVo.setReviewImage2("");
		}
		if(reviewVo.getReviewImage3()==null){
			reviewVo.setReviewImage3("");
		}
		if(reviewUpdateVo.getDeleteImage1()!=null && !reviewUpdateVo.getDeleteImage1().isEmpty()){
			deleteFile(reviewUpdateVo.getDeleteImage1(),request);
		}
		if(reviewUpdateVo.getDeleteImage2()!=null && !reviewUpdateVo.getDeleteImage2().isEmpty()){
			deleteFile(reviewUpdateVo.getDeleteImage2(),request);
		}
		if(reviewUpdateVo.getDeleteImage3()!=null && !reviewUpdateVo.getDeleteImage3().isEmpty()){
			deleteFile(reviewUpdateVo.getDeleteImage3(),request);
		}
		logger.info("리뷰 DB 수정전 reviewVo={}",reviewVo);
		int cnt = reviewService.updateReview(reviewVo);
		logger.info("리뷰 수정 결과 cnt={}",cnt);
		
		double starscore = reviewVo.getReviewStarscore()-orldreviewVo.getReviewStarscore();
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("reviewStarscore", starscore);
		map.put("shopNo", reviewVo.getShopNo());
		int result = reviewService.updateStarScoreShop2(map);
		logger.info("상점 별점평균 업데이트 결과 result = {}",result);
		
		return "redirect:/shop/client_shop_det.do?no="+reviewVo.getShopNo();
	}
	
	@RequestMapping("/deletereview.do")
	public String deleteReview(@RequestParam(defaultValue="0") int reviewNo,
								HttpServletRequest request){
		
		ReviewVO reviewVo = reviewService.selectReviewByNo(reviewNo);
		int shopno = reviewVo.getShopNo();
		if(reviewVo.getReviewImage1()!=null && !reviewVo.getReviewImage1().isEmpty()){
			deleteFile(reviewVo.getReviewImage1(),request);
		}
		if(reviewVo.getReviewImage2()!=null && !reviewVo.getReviewImage2().isEmpty()){
			deleteFile(reviewVo.getReviewImage2(),request);
		}
		if(reviewVo.getReviewImage3()!=null && !reviewVo.getReviewImage3().isEmpty()){
			deleteFile(reviewVo.getReviewImage3(),request);
		}
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("reviewStarscore", reviewVo.getReviewStarscore());
		map.put("shopNo", reviewVo.getShopNo());
		int result = reviewService.updateStarScoreShop2(map);
		logger.info("상점 별점평균 업데이트 결과 result = {}",result);
		
		int cnt = reviewService.deleteReview(reviewNo);
		logger.info("리뷰삭제결과 cnt={}",cnt);
		return "redirect:/shop/client_shop_det.do?no="+shopno;
	}
	
	
	public void deleteFile(String fileName,HttpServletRequest request){
		String upPath = fileUploadWebUil.getUploadPath(request, fileUploadWebUil.PROFILE_IMAGE_UPLOAD);
		File oldFile = new File(upPath,fileName);
		if(oldFile.exists()){
			boolean bool =oldFile.delete();
			logger.info("기존 파일 삭제 여부={}", bool);
		}
	}
}
