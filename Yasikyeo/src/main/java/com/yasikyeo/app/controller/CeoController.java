package com.yasikyeo.app.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CeoController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping("ceo_templet/marketmember_reg4.do")
	public void marketmember_reg4(){
		logger.info("marketmember_reg4 페이지 로딩");
	}
}
