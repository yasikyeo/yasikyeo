package com.yasikyeo.app.ceo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yasikyeo.app.controller.CustomerIndexController;

@Controller
public class CeoIndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerIndexController.class);
	
	@RequestMapping("/ceo/index.do")
	public void index(){
		logger.info("ceo index 페이지 로딩");
	}
	
	@RequestMapping("/provision/provision1.do")
	public void provision1(){
	}
	
	@RequestMapping("/provision/provision2.do")
	public void provision2(){
	}
	
	@RequestMapping("/ceo/cscenter/cscenter.do")
	public void cscenter(){
	}
	
	@RequestMapping("/ceo/event/ceo_event.do")
	public void ceo_event(){
	}
	
	@RequestMapping("/ceo/honeytip/honeytip.do")
	public void honeytip(){
	}
	
	@RequestMapping("/ceo/serviceintro/serviceintro.do")
	public void serviceintro(){
	}
	
}
