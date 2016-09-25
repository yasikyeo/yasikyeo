package com.yasikyeo.app.ceo.shop.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yasikyeo.app.ceo.shop.model.CeoProductVO;
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
	
	@RequestMapping(value="ceo/member/ceo_addshop.do",method=RequestMethod.GET)
	public String ceo_addshop_get(HttpSession session,Model model){
		
		String ceoId = (String) session.getAttribute("ceoId");
		
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		int res = ceoShopService.selectShop(ceoNo);
		
		String msg="",url="";
		if(res>0){
			msg="이미 업소등록을 하셨습니다.";
			url="/ceo/index.do";
		}else{
			return "/ceo/member/ceo_addshop";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/member/ceo_addshop.do",method=RequestMethod.POST)
	public String ceo_addshop_post(@ModelAttribute CeoShopVO ceoShopVo,HttpSession session,HttpServletRequest request,Model model){
		logger.info("업소등록 파라미터 ceoShopVo={}", ceoShopVo);
		
		String ceoId = (String) session.getAttribute("ceoId");
		
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
		
		logger.info("파일명={}",fileName);
		
		ceoShopVo.setShopImage(fileName);
		
		int cnt = ceoShopService.insertCeoShop(ceoShopVo,ceoId);
		String msg="",url="/ceo/index.do";
		if(cnt>0){
			msg="업소 등록이 완료되었습니다.";
		}else{
			msg="업소 등록 실패";
		}
		
		logger.info("업소 등록 결과 cnt={}", cnt);
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/marketadmin/marketadmin.do",method=RequestMethod.GET)
	public String marketadmin_get(HttpSession session,Model model){
		
		String ceoId = (String) session.getAttribute("ceoId");
		
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		int res = ceoShopService.selectShop(ceoNo);
		
		String msg="",url="";
		
		if(res>0){
			return "/ceo/marketadmin/marketadmin";
		}else{
			msg="등록된 업소가 없습니다 업소등록을 해주세요.";
			url="/ceo/member/ceo_addshop.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/marketadmin/marketadmin.do",method=RequestMethod.POST)
	public String marketadmin_post(@ModelAttribute CeoProductVO ceoProductVo,HttpSession session,HttpServletRequest request,Model model){
		logger.info("메뉴등록 파라미터 ceoProductVo={}", ceoProductVo);
		
		String ceoId = (String) session.getAttribute("ceoId");
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		
		int uploadType = FileUploadWebUtil.SHOP_PRODUCT_IMAGE_UPLOAD;
		//=> 상품등록시 이미지 업로드
		
		List<Map<String, Object>> fileList = fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		String fileName="";
		long fileSize=0;
		for(Map<String, Object> mymap : fileList){
			fileName= (String) mymap.get("fileName");
			fileSize=(Long) mymap.get("fileSize");			
		}
		
		logger.info("파일명={}",fileName);
		
		ceoProductVo.setProductImage(fileName);
		
		int cnt = ceoShopService.insertCeoProduct(ceoProductVo, ceoNo);
		String msg="",url="/ceo/marketadmin/marketadmin.do";
		if(cnt>0){
			msg="메뉴 등록이 완료되었습니다.";
		}else{
			msg="메뉴 등록 실패";
		}
		
		logger.info("메뉴 등록 결과 cnt={}", cnt);
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/member/ceo_updateshop.do",method=RequestMethod.GET)
	public String ceo_updateshop_get(HttpSession session,Model model){
		
		String ceoId = (String) session.getAttribute("ceoId");
		
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		CeoShopVO ceoShopVo = ceoShopService.selectCeoShop(ceoNo);
		
		String msg="",url="";
		
		if(ceoShopVo!=null){
			model.addAttribute("ceoShopVo",ceoShopVo);
			
			return "/ceo/member/ceo_updateshop";
		}else{
			msg="등록된 업소가 없습니다 업소등록을 해주세요.";
			url="/ceo/member/ceo_addshop.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "common/message";
	}
}
