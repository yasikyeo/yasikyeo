package com.yasikyeo.app.ceo.controller;

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

import com.yasikyeo.app.ceo.model.CeoMemberService;
import com.yasikyeo.app.ceo.model.CeoVO;


@Controller
@RequestMapping("/ceo")
public class CeoLoginController {
	private static final Logger logger = LoggerFactory.getLogger(CeoLoginController.class);
	
	@Autowired
	private CeoMemberService ceoMemberService;
		
	@RequestMapping(value="/login.do", 	method=RequestMethod.POST)
	public String login_post(@ModelAttribute CeoVO ceoVo, @RequestParam(required=false) String idSave, 
			HttpServletRequest request,	HttpServletResponse response,Model model){
		//1.
		ceoVo.setAuthcode(CeoMemberService.CEO_AUTH_CODE);
		
		logger.info("로그인 처리 , ceoVo={}",ceoVo);
		logger.info("idSave={}", idSave);
		
		//2.
		int result = ceoMemberService.loginCheck(ceoVo);
		logger.info("로그인 처리 결과, result={}", result);
		
		String msg="", url="/ceo/index.do";
		if(result==CeoMemberService.LOGIN_OK){
			//로그인 성공
			//[1] 세션에 저장
			CeoVO cVo = ceoMemberService.selectMemberByMemberId(ceoVo.getCeoId());
			logger.info("cVo={}",cVo);
			
			HttpSession session = request.getSession();
			session.setAttribute("ceoId", ceoVo.getCeoId());
			session.setAttribute("ceoName", cVo.getCeoName());
			session.setAttribute("authcode", cVo.getAuthcode());
			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_ceoId", cVo.getCeoId());
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
			
			msg=cVo.getCeoName() + "님 로그인되었습니다";
			url="/ceo/index.do";
		}else if(result==CeoMemberService.PWD_DISAGREE){
			msg="비밀번호가 일치하지 않습니다";			
		}else if(result==CeoMemberService.ID_NONE){
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
		session.removeAttribute("ceoId");
		session.removeAttribute("ceoName");
		session.removeAttribute("authcode");
		
		//3.
		model.addAttribute("msg", "로그아웃되었습니다");
		model.addAttribute("url", "/ceo/index.do");
		
		return "common/message";
	}
}