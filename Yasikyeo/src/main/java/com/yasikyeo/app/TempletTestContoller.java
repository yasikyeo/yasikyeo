package com.yasikyeo.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TempletTestContoller {

	@RequestMapping("/csuTest1.do")
	public String mypage(){
		return "mypage/client_mypage";
	}
	@RequestMapping("/csuTest2.do")
	public String paymentst(){
		return "mypage/client_paymentList";
	}
}
