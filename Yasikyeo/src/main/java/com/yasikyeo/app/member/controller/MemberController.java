package com.yasikyeo.app.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yasikyeo.app.member.model.MemberDAO;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {

	private static final Logger logeer = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/client_addmember.do", method=RequestMethod.GET)
	public void client_addmember_get(){
		logeer.info("회원가입 페이지");
	}
	
	@RequestMapping(value="/client_addmember.do", method=RequestMethod.POST)
	public String client_addmember_post(@ModelAttribute MemberVO memberVo,Model model){
		logeer.info("회원가입 파라미터 MemberVO={}",memberVo);
		
		int cnt = memberService.insertMember(memberVo);
		logeer.info("회원가입 성공 여부 cnt={}",cnt);
		
		
		String msg="",url="";
		if(cnt>0){
			msg="회원가입되었습니다.";
			url="/index.do";
		}else{
			msg="회원가입 실패";
			url="/login/client_addmember.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
