package com.yasikyeo.app.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerIndexController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerIndexController.class);
	
	@RequestMapping("/index.do")
	public void index(){
		logger.info("index 페이지 로딩");
	}
}





