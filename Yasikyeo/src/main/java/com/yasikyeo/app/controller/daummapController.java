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
	
	@RequestMapping("ceo_templet/provision1.do")
	public void provision1(){
		logger.info("provision1 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/provision2.do")
	public void provision2(){
		logger.info("provision2 페이지 로딩");
	}
}
