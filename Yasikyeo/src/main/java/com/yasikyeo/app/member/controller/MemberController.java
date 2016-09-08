package com.yasikyeo.app.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {

	private static final Logger logeer = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="/client_addmember.do", method=RequestMethod.GET)
	public void client_addmember_get(){
		logeer.info("회원가입 페이지");
	}
	
	@RequestMapping(value="/client_addmember.do", method=RequestMethod.POST)
	public void client_addmember_post(@ModelAttribute MemberVO memberVo){
		logeer.info("회원가입 파라미터 MemberVO={}",memberVo);
		
	}
}