package com.yasikyeo.app.ceo.member.controller;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yasikyeo.app.ceo.model.CeoMemberService;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.member.controller.EmailSender;

@Controller
@RequestMapping("/ceo/member")
public class CeoMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(CeoMemberController.class); 
	
	@Autowired
	private CeoMemberService ceoMemberService;
	
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
	
	@RequestMapping("/ceo_addmember.do")
	public void ceo_addmember(){
	}
	
	@RequestMapping("/ceo_addmember2.do")
	public void ceo_addmember2(){
	}
	
	@RequestMapping(value="/ceo_addmember3.do",method=RequestMethod.GET)
	public void ceo_addmember3_get(){
	}
	
	@RequestMapping(value="/ceo_addmember3.do",method=RequestMethod.POST)
	public String ceo_addmember3_post(@ModelAttribute CeoVO ceoVo,Model model){
		
		logger.info("파라미터 CeoVO={}",ceoVo);
		
		int res = ceoMemberService.insertMember(ceoVo);
		
		String msg="",url="/ceo/index.do";
		
		if(res>0){
			msg="회원가입이 완료되었습니다.";
		}else{
			msg="회원가입 실패";
			url="/ceo/member/ceo_addmember3.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/ajaxCheckCeoId.do")
	@ResponseBody
	public int ajaxCheckId(@RequestParam String ceoId){
		logger.info("ajax-아이디 중복확인, 파라미터 ceoId={}", ceoId);
		
		int result = ceoMemberService.checkMemberId(ceoId);
		logger.info("ajax 아이디 중복확인 결과, result={}",result);
		//해당 아이디가 존재하면 1, 존재하지 않으면 2를 리턴
		
		return result;
	}
	
	@RequestMapping(value="/emailAuth.do")
	public ModelAndView emailAuth_post(@RequestParam String ceoEmail){
		
		String authNum = "";
		
		authNum = RandomNum();
		
		logger.info("파라미터 email={} authNum={}",ceoEmail,authNum);
		
		String receiver=ceoEmail;
		String sender="yasikyeo@yasikyeo.com";
		
		String subject="[야시켜] 이메일 인증 코드";
		String content="야시켜 이메일 인증 코드 : " + authNum + " 입니다.";
		
		try {
			emailSender.sendEmail(subject, content, 
					receiver, sender);
			logger.info("이메일 발송 성공!!");
		} catch (MessagingException e) {
			logger.info("이메일 발송 실패!!");
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login/emailAuth");
		mv.addObject("email",ceoEmail);
		mv.addObject("authNum",authNum);
		
		return mv;
	}
	
	@RequestMapping("/ceo_addshop.do")
	public void ceo_addshop(){
	}
	@RequestMapping("/daummap.do")
	public void daummap(){
	}
}
