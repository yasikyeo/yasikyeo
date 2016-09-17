package com.yasikyeo.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TempletTestContoller {

	@RequestMapping("/csuTest0.do")
	public String mypage0(){
		//완성
		return "mypage/client_myinfo";
	}
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
	@RequestMapping("/csuTest4.do")
	public String deletm(){
		//회원탈퇴 완성
		return "login/client_deleteMember";
	}
	@RequestMapping("/csuTest5.do")
	public String mypointf(){
		//완성
		return "mypage/client_mypoint";
	}
	@RequestMapping("/csuTest6.do")
	public String myre(){
		//완성
		return "mypage/client_myreview";
	}
	@RequestMapping("/csuTest7.do")
	public String csuTest7(){
		//완성
		return "service/client_service";
	}
	@RequestMapping("/csuTest8.do")
	public String csuTest8(){
		//완성
		return "service/client_board";
	}
	@RequestMapping("/csuTest9.do")
	public String csuTest9(){
		//완성
		return "service/client_board_detail";
	}
	@RequestMapping("/csuTest10.do")
	public String csuTest10(){
		//완성
		return "service/client_faq";
	}
	@RequestMapping("/csuTest11.do")
	public String csuTest11(){
		//완성
		return "service/client_qna";
	}
	@RequestMapping("/csuTest12.do")
	public String csuTest12(){
		return "service/client_qna_list";
	}
	
}
