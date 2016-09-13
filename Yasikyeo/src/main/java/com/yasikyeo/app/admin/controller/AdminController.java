package com.yasikyeo.app.admin.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.admin.model.AdminService;
import com.yasikyeo.app.admin.model.AdminVO;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/admintemplet")
public class AdminController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AdminService adminService;
	
	private static final Logger logger=
			LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping("/adminIndex.do")
	public String adminIndexView(){
		//1.
			logger.info("관리자 메인메뉴 보여주기");
		//2.
			
		//3.
			
			return "admintemplet/adminIndex";
	}
	
	@RequestMapping(value="/adminMain.do",method=RequestMethod.GET)
	public String adminMainView(){
		//1.
			logger.info("관리자 로그인화면 보여주기");
		//2.
		
		//3.
			return "admintemplet/adminMain";
	}
	
	@RequestMapping(value="/adminMain.do", method=RequestMethod.POST)
	public String adminMain_post(@ModelAttribute AdminVO adminVo,
			@RequestParam(required=false) String chkSave,
			HttpServletRequest request, 
			HttpServletResponse response,
			Model model){
		//1.
			adminVo.setAuthCode(MemberService.ADMIN_AUTH_CODE);
			logger.info("관리자 로그인 파라미터 adminVO={}", adminVo);
			
		//2.	
			int result = adminService.loginCheck(adminVo);
			logger.info("로그인 처리 결과, result={}", result);
			
			String msg="", url="/login/login.do";
			if(result==MemberService.LOGIN_OK){
				//로그인 성공
				//[1] 세션에 저장
				AdminVO adVo = adminService.selectMemberByMemberId(adminVo.getAdminId());
				
				HttpSession session = request.getSession();
				session.setAttribute("adminId", adminVo.getAdminId());
				session.setAttribute("authcode", adVo.getAuthCode());
				
				//[2] 쿠키에 저장
				Cookie ck = new Cookie("ck_admin_Id", adminVo.getAdminId());
				if(chkSave!=null){
					//아이디 저장을 체크한 경우 => 쿠키에 저장
					ck.setMaxAge(1000*24*60*60);  //쿠키 유효기간-1000일
					response.addCookie(ck);				
				}else{
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				
				msg=adminVo.getAdminId() + "님 로그인되었습니다";
				url="/admintemplet/adminIndex.do";
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
	
	
	@RequestMapping(value="/eventNotice.do", method=RequestMethod.GET)
	public String admineventNoticeView(){
		//1.
			logger.info("공지사항/이벤트 화면 보여주기");
		//2.
		
		//3.
			return "admintemplet/eventNotice";
	}
	
	
	@RequestMapping(value="/memberManage.do")
	public String memberManagerView(){
		//1.
			logger.info("회원 정보 페이지 보여주기");
		//2.
		
		//3.
			return "admintemplet/memberManage";
	}
	
	

	@RequestMapping(value="/messageBoard.do", method=RequestMethod.GET)
	public String noticeBoardView(){
		//1.
			logger.info("게시판 보여주기");
		//2.
			
		//3.
			return "admintemplet/messageBoard";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerView(){
		//1.
			logger.info("회원 등록보여주기");
		//2.	
			
		//3.
			return "admintemplet/register";
	}	
	
	
	@RequestMapping(value="/fandA.do", method=RequestMethod.GET)
	public String fandAView(){
		//1.
			logger.info("F&A보여주기");
		//2.
		
		//3.
			return "admintemplet/fandA";
	}
}
