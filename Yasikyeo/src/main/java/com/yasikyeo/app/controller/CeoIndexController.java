package com.yasikyeo.app.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CeoIndexController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerIndexController.class);
	
	@RequestMapping("ceo_templet/test.do")
	public void test(){
		logger.info("test 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/marketmember_reg.do")
	public void marketmember_reg(){
		logger.info("marketmember_reg 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/marketmember_reg2.do")
	public void marketmember_reg2(){
		logger.info("marketmember_reg2 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/marketmember_reg3.do")
	public void marketmember_reg3(){
		logger.info("marketmember_reg3 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/marketmember_reg4.do")
	public void marketmember_reg4(){
		logger.info("marketmember_reg4 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/serviceintro.do")
	public void serviceintro(){
		logger.info("serviceintro 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/honeytip.do")
	public void honeytip(){
		logger.info("honeytip 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/ceo_event.do")
	public void ceo_event(){
		logger.info("ceo_event 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/cuscenter.do")
	public void cuscenter(){
		logger.info("cuscenter 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/event_popup.do")
	public void event_popup(){
		logger.info("event_popup 페이지 로딩");
	}
	
	@RequestMapping("ceo_templet/marketadmin.do")
	public void marketadmin(){
		logger.info("marketadmin 페이지 로딩");
	}
	
	
}
