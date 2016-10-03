package com.yasikyeo.app.client.order.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;
import com.yasikyeo.app.orderdet.model.OrderDetList;
import com.yasikyeo.app.orderdet.model.OrderDetVO;

@Controller
@RequestMapping("/order")
public class ClientOrderController {

	private static final Logger logger = LoggerFactory.getLogger(ClientOrderController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/client_order_info.do")
	public void info(@ModelAttribute OrderDetList orderList,HttpSession session,Model model){
		logger.info("주문하기 파라미터 orderList={}",orderList);
		List<OrderDetVO>ordermenuList = orderList.getOrderDetList();
		int totalMprice=orderList.getTotalmenuprice();
		
		session.setAttribute("ordermenuList",ordermenuList );
		session.setAttribute("totalMprice",totalMprice );
		
		String userid = (String)session.getAttribute("memberId");
		logger.info("userid={}",userid);
		MemberVO memberVo =  memberService.selectMemberByMemberId(userid);
		logger.info("memberVo={}",memberVo);
		
		model.addAttribute("memberVo", memberVo);
		
		
	}
	@RequestMapping("/client_order_success.do")
	public void paymentsuccess(){
		
	}
}
