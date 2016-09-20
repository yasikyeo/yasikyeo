package com.yasikyeo.app.client.service.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ClientServiceController {

	private static final Logger logger = LoggerFactory.getLogger(ClientServiceController.class);
	
	@RequestMapping("/client_faq.do")
	public void client_faq(){
		logger.info("자주하는질문페이지 보여주기");
	}
	
}
