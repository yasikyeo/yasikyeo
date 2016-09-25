package com.yasikyeo.app.client.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.ceo.shop.model.CeoShopService;
import com.yasikyeo.app.ceo.shop.model.CeoShopVO;

@Controller
@RequestMapping("/shop")
public class ClientShopController {

	private static final Logger logger = LoggerFactory.getLogger(ClientShopController.class);
	
	@Autowired
	private CeoShopService shopService;
	
	@RequestMapping("/client_shop_list.do")
	public void clientShopList(@RequestParam String menu,
			HttpSession session, Model model){
		String si = (String)session.getAttribute("si");
		String gu = (String)session.getAttribute("gu");
		String dong = (String)session.getAttribute("dong");
		
		logger.info("상점리스트 보여주기 파라미터 si={},gu={}",si,gu);
		logger.info("상점리스트 보여주기 파라미터 dong={},munu={}",dong,menu);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("si", si);
		map.put("gu", gu);
		map.put("dong", dong);
		map.put("categori", menu);
		
		
		int cnt = shopService.countShopByCategory(map);
		List<CeoShopVO> list = shopService.selectShopByCategory(map);
		logger.info("상점검색결과 갯수 cnt={}",cnt);
		
		model.addAttribute("findShop", cnt);
		model.addAttribute("shopList", list);
		
	}
	@RequestMapping("/client_shop_det.do")
	public void clientShopDetail(){
		
	}
}
