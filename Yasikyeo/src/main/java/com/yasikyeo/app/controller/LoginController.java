package com.yasikyeo.app.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberService memberService;
		
	@RequestMapping(value="/login.do", 	method=RequestMethod.POST)
	public String login_post(@ModelAttribute MemberVO memberVo, @RequestParam(required=false) String idSave, 
			HttpServletRequest request,	HttpServletResponse response,@RequestParam String prev,Model model){
		//1.
		memberVo.setAuthcode(MemberService.USER_AUTH_CODE);
		
		logger.info("로그인 처리 , memberVo={}",memberVo);
		logger.info("idSave={}", idSave);
		
		//2.
		int result = memberService.loginCheck(memberVo);
		logger.info("로그인 처리 결과, result={}", result);
		
		int res = prev.indexOf("sikyeo") + 6;
		
		logger.info("파라미터={}",res);
		
		String url = prev.substring(res);
	
		
		String msg="";
		if(result==MemberService.LOGIN_OK){
			//로그인 성공
			//[1] 세션에 저장
			MemberVO memVo = memberService.selectMemberByMemberId(memberVo.getMemberId());
			logger.info("memVo={}",memVo);
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memberVo.getMemberId());
			session.setAttribute("authcode", memVo.getAuthcode());
			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_memberId", memVo.getMemberId());
			if(idSave!=null){
				//아이디 저장을 체크한 경우 => 쿠키에 저장
				ck.setMaxAge(1000*24*60*60);  //쿠키 유효기간-1000일
				ck.setPath("/");
				response.addCookie(ck);
			}else{
				ck.setMaxAge(0);
				ck.setPath("/");
				response.addCookie(ck);
			}
			
			msg=memVo.getMemberNickname() + "님 로그인되었습니다";
		}else if(result==MemberService.PWD_DISAGREE){
			msg="비밀번호가 일치하지 않습니다";			
		}else if(result==MemberService.ID_NONE){
			msg="해당 아이디가 존재하지 않습니다";			
		}else{
			msg="로그인 처리 실패";
		}
			
		//3.
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session, Model model){
		//1.
		logger.info("로그아웃 처리");
		
		//2.
		//session.invalidate();
		session.removeAttribute("memberId");
		session.removeAttribute("authcode");
		
		//3.
		model.addAttribute("msg", "로그아웃되었습니다");
		model.addAttribute("url", "/index.do");
		
		return "common/message";
	}
}