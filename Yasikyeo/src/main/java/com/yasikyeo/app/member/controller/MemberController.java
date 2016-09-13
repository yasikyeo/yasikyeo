package com.yasikyeo.app.member.controller;

import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yasikyeo.app.member.model.MemberDAO;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/login")
public class MemberController {

	private static final Logger logeer = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private EmailSender emailSender;
	
	private String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<=5; i++){
			int n = (int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/client_addmember.do", method=RequestMethod.GET)
	public void client_addmember_get(){
		logeer.info("회원가입 페이지");
	}
	
	@RequestMapping(value="/emailAuth.do")
	public ModelAndView emailAuth_post(HttpServletResponse response, HttpServletRequest request){
		
		String email = request.getParameter("member_Email");
		String authNum = "";
		
		authNum = RandomNum();
		
		logeer.info("파라미터 email={} authNum={}",email,authNum);
		
		String receiver=email;
		String sender="yasikyeo@yasikyeo.com";
		
		String subject="메일 인증 코드 발송";
		String content="메일 인증 코드 : " + authNum + "입니다.";
		
		try {
			emailSender.sendEmail(subject, content, 
					receiver, sender);
			logeer.info("이메일 발송 성공!!");
		} catch (MessagingException e) {
			logeer.info("이메일 발송 실패!!");
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login/emailAuth");
		mv.addObject("email",email);
		mv.addObject("authNum",authNum);
		
		return mv;
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
	
	@RequestMapping("/client_findPwd.do")
	public void client_findPwd(){
	}
}


