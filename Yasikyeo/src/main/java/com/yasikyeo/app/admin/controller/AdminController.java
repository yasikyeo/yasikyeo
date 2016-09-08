package com.yasikyeo.app.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admintemplet")
public class AdminController {
	
	private static final Logger logger=
			LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="/adminMain.do",method=RequestMethod.GET)
	public String adminMainView(){
		//1.
			logger.info("관리자 메인 화면 보여주기");
		//2.
		
		//3.
			return "admintemplet/adminMain";
	}
	
	
	@RequestMapping(value="/eventNotice.do", method=RequestMethod.GET)
	public String admineventNoticeView(){
		//1.
			logger.info("공지사항/이벤트 화면 보여주기");
		//2.
		
		//3.
			return "admintemplet/eventNotice";
	}
	
	
	@RequestMapping(value="/memberManage.do", method=RequestMethod.GET)
	public String memberManagerView(){
		//1.
			logger.info("회원 정보 보여주기");
		//2.
		
		//3.
			return "admintemplet/memberManage";
	}
	
	@RequestMapping(value="/messageBoard.do", method=RequestMethod.GET)
	public String noticeBoardView(){
		//1.
			logger.info("게시판 보여주기");
		//2.
			
		//3.
			return "admintemplet/messageBoard";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerView(){
		//1.
			logger.info("회원 등록보여주기");
		//2.	
			
		//3.
			return "admintemplet/register";
	}	
	
	
	@RequestMapping(value="/fandA.do", method=RequestMethod.GET)
	public String fandAView(){
		//1.
			logger.info("F&A보여주기");
		//2.
		
		//3.
			return "admintemplet/fandA";
	}
}
