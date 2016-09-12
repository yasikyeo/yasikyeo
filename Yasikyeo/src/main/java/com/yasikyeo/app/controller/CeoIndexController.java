package com.yasikyeo.app.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CeoIndexController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerIndexController.class);
	
	@RequestMapping("ceo_templet/marketmember_reg4.do")
	public void marketmember_reg4(){
		logger.info("marketmember_reg4 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/serviceintro.do")
	public void serviceintro(){
		logger.info("marketmember_reg4 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/honeytip.do")
	public void honeytip(){
		logger.info("marketmember_reg4 페이지 로딩");
	}
}
