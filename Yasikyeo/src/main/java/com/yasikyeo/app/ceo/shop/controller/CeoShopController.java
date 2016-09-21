package com.yasikyeo.app.ceo.shop.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;

import com.yasikyeo.app.ceo.shop.model.CeoShopService;
import com.yasikyeo.app.ceo.shop.model.CeoShopVO;
import com.yasikyeo.app.common.FileUploadWebUtil;

@Controller
public class CeoShopController {
	
	private static final Logger logger = LoggerFactory.getLogger(CeoShopController.class);
	
	@Autowired
	private FileUploadWebUtil fileUtil;
	
	@Autowired
	private CeoShopService ceoShopService;
	
	@RequestMapping(value="/ceo_addshop.do",method=RequestMethod.GET)
	public void ceo_addshop_get(){
	}
	
	@RequestMapping(value="/ceo_addshop.do",method=RequestMethod.POST)
	public String ceo_addshop_post(@ModelAttribute CeoShopVO ceoShopVo,HttpServletRequest request,Model model){
		logger.info("업소등록 파라미터 ceoShopVo={}", ceoShopVo);
		
		int uploadType = FileUploadWebUtil.SHOP_IMAGE_UPLOAD;
		//=> 상품등록시 이미지 업로드
		
		List<Map<String, Object>> fileList = fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		String fileName="";
		long fileSize=0;
		for(Map<String, Object> mymap : fileList){
			fileName= (String) mymap.get("fileName");
			fileSize=(Long) mymap.get("fileSize");			
		}
		
		ceoShopVo.setShopImage(fileName);
		
		//2.
		int cnt = ceoShopService.insertCeoShop(ceoShopVo);
		logger.info("상품 등록 결과 cnt={}", cnt);
		
		return "common/message";
	}
}
