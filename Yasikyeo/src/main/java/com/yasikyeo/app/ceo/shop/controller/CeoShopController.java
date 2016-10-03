package com.yasikyeo.app.ceo.shop.controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.categori.model.CategoriVO;
import com.yasikyeo.app.ceo.shop.model.CeoProductVO;
import com.yasikyeo.app.ceo.shop.model.CeoShopService;
import com.yasikyeo.app.ceo.shop.model.CeoShopVO;
import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.common.PaginationInfo;
import com.yasikyeo.app.common.Utility;

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
		
		int uploadType = FileUploadWebUtil.PRODUCT_IMAGE_UPLOAD;
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
	
	@RequestMapping(value="ceo/member/ceo_updateshop.do",method=RequestMethod.POST)
	public String ceo_updateshop_post(@ModelAttribute CeoShopVO ceoShopVo,HttpSession session,HttpServletRequest request,Model model){
		
		
		String ceoId = (String) session.getAttribute("ceoId");
		
		int uploadType = FileUploadWebUtil.SHOP_IMAGE_UPLOAD;
		
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		String oldShopImage = ceoShopService.selectCeoShop(ceoNo).getShopImage();
		int shopNo = ceoShopService.selectCeoShop(ceoNo).getShopNo();
		ceoShopVo.setShopNo(shopNo);
		
		logger.info("업소정보 수정 파라미터 ceoShopVo={}", ceoShopVo);
		
		List<Map<String, Object>> fileList = fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		String fileName="";
		long fileSize=0;
		for(Map<String, Object> mymap : fileList){
			fileName= (String) mymap.get("fileName");
			fileSize=(Long) mymap.get("fileSize");			
		}
		
		logger.info("파일명={}",fileName);
		
		if(fileName==null || fileName.isEmpty()){
			ceoShopVo.setShopImage(oldShopImage);
		}else{
			ceoShopVo.setShopImage(fileName);
			
			String upPath=fileUtil.getUploadPath(request, fileUtil.SHOP_IMAGE_UPLOAD);
					
				//File객체 생성 후 파일 삭제
				File delFile = new File(upPath,oldShopImage);
				if(delFile.exists()){
					boolean bool= delFile.delete();
					logger.info("파일 삭제 결과={}", bool);
				}
		}
		
		int cnt = ceoShopService.updateCeoShop(ceoShopVo);
		String msg="",url="/ceo/index.do";
		if(cnt>0){
			msg="업소 정보 수정이 완료되었습니다.";
		}else{
			msg="업소 정보 수정 실패";
		}
		
		logger.info("업소 정보 수정 결과 cnt={}", cnt);
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/marketadmin/market_menuList.do",method=RequestMethod.GET)
	public String market_menuList_get(@ModelAttribute CategoriVO searchVo,HttpSession session,Model model){
		
		//1.
		logger.info("상품목록 파라미터 searchVo={}",
				searchVo);
		
		String ceoId = (String) session.getAttribute("ceoId");
		int ceoNo = ceoShopService.selectCeoNo(ceoId);
		int shopNo = ceoShopService.selectShopNo(ceoNo);
		
		logger.info("ceoNo={},shopNo={}",ceoNo,shopNo);
		
		//페이징 처리 관련 setting
		//[1]
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CEO_PDLIST_RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
				
		//[2]
		searchVo.setRecordCountPerPage(Utility.CEO_PDLIST_RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		//2.		
		List<CeoProductVO> alist = ceoShopService.productSelectByShopNo(shopNo);
		logger.info("상품목록 조회 결과, alist.size()={}",
				alist.size());
		
		//전체 레코드개수 조회
		int totalRecord = ceoShopService.countShop(shopNo);
		logger.info("전체 레코드 개수 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		//3.
		model.addAttribute("pdList", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "ceo/marketadmin/market_menuList";
	}
	
	@RequestMapping(value="ceo/marketadmin/market_menuUpdate.do",method=RequestMethod.GET)
	public void market_menuUpdate_get(@RequestParam int productNo,Model model){
		
		CeoProductVO ceoProductVo = ceoShopService.selectProduct(productNo);
		
		model.addAttribute("ceoProductVo",ceoProductVo);
	}
	
	@RequestMapping(value="ceo/marketadmin/market_menuUpdate.do",method=RequestMethod.POST)
	public String market_menuUpdate_post(@ModelAttribute CeoProductVO ceoProductVo,HttpSession session,HttpServletRequest request,Model model){
		
		int uploadType = FileUploadWebUtil.PRODUCT_IMAGE_UPLOAD;
		
		String oldProductImage = ceoShopService.selectProduct(ceoProductVo.getProductNo()).getProductImage();
		
		logger.info("메뉴 정보 수정 파라미터 ceoProductVo={}", ceoProductVo);
		
		List<Map<String, Object>> fileList = fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		String fileName="";
		long fileSize=0;
		for(Map<String, Object> mymap : fileList){
			fileName= (String) mymap.get("fileName");
			fileSize=(Long) mymap.get("fileSize");			
		}
		
		logger.info("파일명={}",fileName);
		
		if(fileName==null || fileName.isEmpty()){
			ceoProductVo.setProductImage(oldProductImage);
		}else{
			ceoProductVo.setProductImage(fileName);
			
			String upPath=fileUtil.getUploadPath(request, fileUtil.SHOP_IMAGE_UPLOAD);
					
				//File객체 생성 후 파일 삭제
				File delFile = new File(upPath,oldProductImage);
				if(delFile.exists()){
					boolean bool= delFile.delete();
					logger.info("파일 삭제 결과={}", bool);
				}
		}
		
		int cnt = ceoShopService.updateProduct(ceoProductVo);
		String msg="",url="/ceo/marketadmin/market_menuList.do";
		if(cnt>0){
			msg="메뉴 정보 수정이 완료되었습니다.";
		}else{
			msg="메뉴 정보 수정 실패";
		}
		
		logger.info("메뉴 정보 수정 결과 cnt={}", cnt);
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="ceo/marketadmin/market_menuDelete.do",method=RequestMethod.GET)
	public String market_menuDelete(@RequestParam int productNo,Model model){
		
		int res = ceoShopService.deleteProduct(productNo);
		
		String msg="",url="/ceo/marketadmin/market_menuList.do";
		if(res>0){
			msg="메뉴 정보 삭제가 완료되었습니다.";
		}else{
			msg="메뉴 정보 삭제 실패";
		}
		
		logger.info("메뉴 정보 삭제 결과 cnt={}", res);
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
	
}
