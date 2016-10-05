package com.yasikyeo.app.client.service.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/service")
public class ClientServiceController {

	private static final Logger logger = LoggerFactory.getLogger(ClientServiceController.class);
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/client_faq.do")
	public void client_faq(){
		logger.info("자주하는질문페이지 보여주기");
	}
	@RequestMapping("/client_service.do")
	public void clientService(){
		
	}
	@RequestMapping("/client_board.do")
	public void clientBoard(){
		
	}
	@RequestMapping("/client_board_detail.do")
	public void clientBoardDetail(){
		
	}
	@RequestMapping(value="/client_qna.do",method=RequestMethod.GET)
	public void clientQna(HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo=null;
		if(memberId!=null && memberId!=""){
			memberVo = memberService.selectMemberByMemberId(memberId);
			logger.info("Qna글쓰기 파라미터 memberVo={}",memberVo);
		}
		model.addAttribute("memberVo", memberVo);
	}
	@RequestMapping("/client_qna_list.do")
	public void clientQnaList(){
		
	}
	@RequestMapping("/client_qna_view.do")
	public void clientQnaView(){
		
	}
	
}
