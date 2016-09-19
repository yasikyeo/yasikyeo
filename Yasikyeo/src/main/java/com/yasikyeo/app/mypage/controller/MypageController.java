package com.yasikyeo.app.mypage.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/client_mypage.do")
	public void MyPage(){
	}
	
	@RequestMapping("/client_mypoint.do")
	public void MyPoint(){
	}
	@RequestMapping("/client_myreview.do")
	public void MyReview(){
	}
	@RequestMapping("/client_paymentList.do")
	public void MyPaymentList(){
	}
	@RequestMapping("/client_myreview_reg_possible.do")
	public void MyReview_reg(){
	}
	
	@RequestMapping(value="/client_myinfo.do",method=RequestMethod.GET)
	public void MyInfo(HttpSession session,Model model){
		
		String memberId = (String) session.getAttribute("memberId");
		
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		
		model.addAttribute("memberVo",memberVo);
	}

	@RequestMapping(value="/client_myinfo.do",method=RequestMethod.POST)
	public String MyInfo(@ModelAttribute MemberVO memberVo,Model model){
		
		logger.info("파라미터 memberVo={}",memberVo);
		
		int res = memberService.updateMember(memberVo);
		
		String msg="",url="/mypage/client_myinfo.do";
		if(res>0){
			msg="회원정보 수정 완료";
		}else{
			msg="회원정보 수정 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/checkPwd.do")
	public ModelAndView checkPwd_post(HttpSession session,@RequestParam String oPwd,Model model){
		
		logger.info("파라미터 oPwd={}",oPwd);
		
		String memberId = (String)session.getAttribute("memberId");
		
		MemberVO memberVo = new MemberVO();
		
		memberVo.setMemberId(memberId);
		memberVo.setMemberPwd(oPwd);
		
		int res = memberService.checkPwd(memberVo);
		String result = "";
		
		if(res==MemberService.CHANGE_PWD_AGREE){
			result = "인증완료";
			logger.info("인증완료");
		}else if(res==MemberService.CHANGE_PWD_DISAGREE){
			result = "인증실패";
			logger.info("인증실패");
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/checkPwd");
		mv.addObject("result",result);
		
		return mv;
	}
}
