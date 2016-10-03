package com.yasikyeo.app.client.order.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.List;
import java.util.Map;

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
import com.yasikyeo.app.order.model.OrderDetList;
import com.yasikyeo.app.order.model.OrderDetVO;
import com.yasikyeo.app.order.model.OrderListService;
import com.yasikyeo.app.order.model.OrderListVO;

@Controller
@RequestMapping("/order")
public class ClientOrderController {

	private static final Logger logger = LoggerFactory.getLogger(ClientOrderController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private OrderListService orderService;
	
	@RequestMapping("/client_order_info.do")
	public void info(@ModelAttribute OrderDetList orderList,HttpSession session,Model model){
		logger.info("주문하기 파라미터 orderList={}",orderList);
		List<OrderDetVO>ordermenuList = orderList.getOrderDetList();
		int totalMprice=orderList.getTotalmenuprice();
		int shopNo=orderList.getShopno();
		
		session.setAttribute("ordermenuList",ordermenuList );
		session.setAttribute("totalMprice",totalMprice );
		session.setAttribute("shopNo",shopNo);
		
		String userid = (String)session.getAttribute("memberId");
		logger.info("userid={}",userid);
		MemberVO memberVo =  memberService.selectMemberByMemberId(userid);
		logger.info("memberVo={}",memberVo);
		
		model.addAttribute("memberVo", memberVo);
		
		
	}
	@RequestMapping("/client_order.do")
	public String ClientOrder(@ModelAttribute OrderListVO orderListVo,HttpSession session){
		logger.info("주문하기 컨트롤러");
		
		String userid = (String)session.getAttribute("memberId");
		logger.info("userid={}",userid);
		MemberVO memberVo =  memberService.selectMemberByMemberId(userid);
		logger.info("memberVo={}",memberVo);
		orderListVo.setMemberNo(memberVo.getMemberNo());
		
		int shopno = (Integer)session.getAttribute("shopNo");
		orderListVo.setShopNo(shopno);
		logger.info("shopNo={}",shopno);

		
		List<OrderDetVO> ordermenuList = (List<OrderDetVO>)session.getAttribute("ordermenuList");
		logger.info("ordermenuList={}",ordermenuList);
		
		
		logger.info("주문하기 파라미터 orderListVo={}",orderListVo);
		
		
		
		Map<String, Integer>result = orderService.insertOrderList(orderListVo, ordermenuList);
		logger.info("주문하기 인서트 결과={}, 주문메뉴인서트 결과={}",result.get("inOrderLCnt"),result.get("inOrderDCnt"));
		logger.info("포인트 인서트 결과={}",result.get("pointCnt"));
		
		
		
		return "redirect:/order/client_order_success.do";
	}
	
	@RequestMapping("/client_order_success.do")
	public void paymentsuccess(){
		
	}
}
