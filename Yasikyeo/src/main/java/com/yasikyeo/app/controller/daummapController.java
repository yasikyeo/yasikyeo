package com.yasikyeo.app.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class daummapController {
	private static final Logger logger = LoggerFactory.getLogger(daummapController.class);
	
	@RequestMapping("ceo_templet/daummap.do")
	public void daummap(){
		logger.info("daummap 페이지 로딩");
	}
}
