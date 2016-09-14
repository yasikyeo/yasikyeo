package com.yasikyeo.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TempletTestContoller {

	@RequestMapping("/csuTest1.do")
	public String mypage(){
		//완성
		return "mypage/client_mypage";
	}
	@RequestMapping("/csuTest2.do")
	public String paymentst(){
		//완성
		return "mypage/client_paymentList";
	}
	@RequestMapping("/csuTest3.do")
	public String findpwd(){
		//완성
		return "mypage/client_myinfo";
	}
}
