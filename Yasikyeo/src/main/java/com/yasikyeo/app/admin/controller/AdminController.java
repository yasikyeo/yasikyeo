package com.yasikyeo.app.admin.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.omg.PortableInterceptor.USER_EXCEPTION;
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
import com.yasikyeo.app.board.model.NoticeService;
import com.yasikyeo.app.board.model.NoticeVO;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/admintemplet")
public class AdminController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FileUploadWebUtil fileUtil;
	
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
			adminVo.setAuthcode(MemberService.ADMIN_AUTH_CODE);
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
				session.setAttribute("adminNo", adminVo.getAdminNo());
				session.setAttribute("authcode", adVo.getAuthcode());
				
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
				
				msg=adminVo.getAdminId()+ "님 로그인되었습니다";
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
	
	@RequestMapping(value="/adminInsertNotice.do", method=RequestMethod.GET)
	public String adminNoticeWrite_view(){
		//1.
			logger.info("공지사항 등록 보여주기");
		//2.
		
		//3.
			return "admintemplet/adminInsertNotice";
	}
	
	@RequestMapping(value="/adminInsertNotice.do",method=RequestMethod.POST)
	public String adminNoticeWrite_post(HttpServletRequest request,
			@ModelAttribute NoticeVO noticeVo,
			Model model){
		//1.
			logger.info("공지사항 글쓰기 처리, 파라미터 noticeVo={}", noticeVo);
		//2.
			
			//파일 업로드 처리
			int uploadType = com.yasikyeo.app.common.FileUploadWebUtil.IMAGE_UPLOAD;
			List<Map<String, Object>> fileList=fileUtil.fileUpload(request, uploadType);
			
			//업로드된 파일명 구해오기
			String fileName="";
			long fileSize=0;
			for( Map<String, Object> mymap : fileList){
				fileName = (String) mymap.get("fileName");
				fileSize = (Long) mymap.get("fileSize");
			}
			
			noticeVo.setNoticeUpfileName(fileName);
		
			int cnt = noticeService.insertNotice(noticeVo);
			logger.info("공지사항 글등록 완료 cnt={}",cnt);
		//3.
			return "redirect:/admintemplet/eventNotice.do";
	}
	
	@RequestMapping(value="/eventNotice.do", method=RequestMethod.GET)
	public String admineventNoticeView(){
		//1.
			logger.info("공지사항/이벤트 화면 보여주기");
		//2.
			
		//3.
			return "admintemplet/eventNotice";
	}
	
	
	@RequestMapping(value="/memberManage.do", method=RequestMethod.GET)
	public String memberManagerView(Model model){
		//1.
			logger.info("회원 정보 페이지 보여주기");
		//2.
			List<MemberVO> usermember = adminService.selectMember();
			List<CeoVO> ceomember = adminService.selectCeo();
			
			model.addAttribute("usermember", usermember);
			logger.info("유저회원정보 보여주기 usermember={}",usermember);
			
			model.addAttribute("ceomember", ceomember);
			logger.info("사장님정보 보여주기 ceomember={}", ceomember);
			
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
	
	@RequestMapping(value="/fandA.do", method=RequestMethod.GET)
	public String fandAView(){
		//1.
			logger.info("F&A보여주기");
		//2.
		
		//3.
			return "admintemplet/fandA";
	}
	
	@RequestMapping(value="/member.do", method=RequestMethod.GET)
	public String memberView(Model model){
		//1.
			logger.info("일반회원보여주기");
			
		//2.
			List<MemberVO> alist = adminService.selectMember();
			logger.info("일반 회원 보여주기 alist={}",alist);
			
			model.addAttribute("usermember", alist);
		//3.
			return "admintemplet/member";
	}
	
	@RequestMapping(value="/memberDetail.do", method=RequestMethod.GET)
	public String detailMemberView(@RequestParam (defaultValue="0")int memberNo,
			Model model){
			//1.
				logger.info("일반회원 상세 보여주기 파라미터 memberNo={}",memberNo);
			//2.
				MemberVO memVo = adminService.selectByNoMember(memberNo);
				logger.info("일반회원 상세내역 파라미터 memberVO={}",memVo);
				
				model.addAttribute("memVo", memVo);
			//3.
				return "admintemplet/memberDetail";
	}
	
	
	@RequestMapping("/memberstate.do")
	private String memberState(@RequestParam (defaultValue="0")int memberNo,
			@RequestParam String memberauthcode){
		//1.
			logger.info("맴버 상태 보여주기 파라미터 memberNo={},memberauthcode={}",memberNo,memberauthcode);
		
		//2.
			int result = 0;
			if(memberauthcode.equals("USER")){
				result = adminService.updateStop(memberNo);
				logger.info("유저 상태 업데이트 결과 result={}",result);
				
			}else if(memberauthcode.equals("STOP")){
				result = adminService.updateUser(memberNo);
				logger.info("유저 상태 업데이트 결과 result={}",result);
			}
			
		//3.
			return "redirect:/admintemplet/memberManage.do";
		
	}
	
	@RequestMapping(value="/ceomember.do", method=RequestMethod.GET)
	public String ceoMemberView(Model model){
		//1.
			logger.info("사장님회원 보여주기");
		//2.
			List<CeoVO> alist = adminService.selectCeo();
			logger.info("사장님 회원 보여주기 alist={}",alist);
			
			model.addAttribute("ceomember", alist);
		//3.
			return "admintemplet/ceomember";
	}
	
	@RequestMapping("/ceoMemberDetail.do")
	public String ceoMemberDetailView(@RequestParam (defaultValue="0")int ceoNo,
			Model model){
		//1.
			logger.info("사장님 회원 상세보기 파라미터 ceoNo={}",ceoNo);
		//2.
			CeoVO ceoVo = adminService.selectByNoCeoMember(ceoNo);
			logger.info("사장님 상세보기 파라미터 CeoVo={}", ceoVo);
			
			model.addAttribute("ceoVo", ceoVo);
			
		//3.
			return "admintemplet/ceoMemberDetail";
	}
	
	@RequestMapping("/ceoMemberState.do")
	public String ceoMemberState(@RequestParam (defaultValue="0")int ceoNo,
			@RequestParam String ceoauthcode){
		//1.
			logger.info("사장 상태 파라미터 ceoNo={}",ceoNo,ceoauthcode);
		//2.
			int result =0;
			if(ceoauthcode.equals("CEO")){
				result=adminService.updateCeoStop(ceoNo);
				logger.info("사장 상태 결과 파라미터 result={}",result);
			}else if(ceoauthcode.equals("STOP")){
				result=adminService.updateCeo(ceoNo);
				logger.info("사장 상태 결과 파라미터 result={}",result);
			}
 		//3.
			return "redirect:/admintemplet/memberManage.do";
	}
	
	@RequestMapping("adminlogout.do")
	public String adminLogout(HttpSession session,
			Model model){
		logger.info("관리자 로그아웃 처리");
		
		session.removeAttribute("adminId");
		session.removeAttribute("authcode");
		
		model.addAttribute("msg", "관리자가 로그아웃되었습니다");
		model.addAttribute("url", "/admintemplet/adminIndex.do");
		
		return "common/message";
		
	}
}
