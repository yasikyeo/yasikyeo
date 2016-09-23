package com.yasikyeo.app.admin.controller;

import java.io.File;
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
import com.yasikyeo.app.board.model.FaQService;
import com.yasikyeo.app.board.model.FaQVO;
import com.yasikyeo.app.board.model.NoticeService;
import com.yasikyeo.app.board.model.NoticeVO;
import com.yasikyeo.app.board.model.ReplyService;
import com.yasikyeo.app.board.model.ReplyVO;
import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.common.PaginationInfo;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.common.Utility;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
@RequestMapping("/admintemplet")
public class AdminController {
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private FaQService faqService;
	
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
			adminVo.setAdminNo(adminService.ADMIN_NO);
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
				url="/admintemplet/adminMain.do";
			}else if(result==MemberService.ID_NONE){
				msg="해당 아이디가 존재하지 않습니다";		
				url="/admintemplet/adminMain.do";
			}else{
				msg="로그인 처리 실패";
				url="/admintemplet/adminMain.do";
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
			int uploadType = FileUploadWebUtil.IMAGE_UPLOAD;
			List<Map<String, Object>> fileList=fileUtil.fileUpload(request, uploadType);
			
			//업로드된 파일명 구해오기
			String fileName="";
			for( Map<String, Object> mymap : fileList){
				fileName = (String) mymap.get("fileName");
				
			}
			
			noticeVo.setNoticeUpfileName(fileName);
			logger.info("파일등록 결과 파라미터 noticeVo={}",noticeVo);
			
			if(noticeVo.getNoticeSuffix().equals("notice")){
				noticeVo.setNoticeSuffix(noticeService.NOTICE);
			}else if(noticeVo.getNoticeSuffix().equals("event")){
				noticeVo.setNoticeSuffix(noticeService.EVENTE);
			}
			
			int cnt = noticeService.insertNotice(noticeVo);
			logger.info("공지사항 글등록 완료 cnt={}",cnt);
		//3.
			return "redirect:/admintemplet/eventNotice.do";
	}
	
	@RequestMapping("/eventNotice.do")
	public String admineventNoticeView(@ModelAttribute SearchVO searchVo,
			Model model){
		//1.
			logger.info("공지사항 화면 보여주기");
		//2.
			logger.info("글목록 조회, 파라미터 searchVo={}",
					searchVo);
			
			PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());
			
			searchVo.setBlockSize(Utility.BLOCK_SIZE);
			searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
					
			//2. db작업 - select
			List<NoticeVO> alist = noticeService.selectAllNoitce(searchVo);
			logger.info("글목록 조회 결과 alist.size()={}", alist.size());
			
			//전체 레코드 개수 조회하기
			int totalRecord 
				= noticeService.selectTotalCount(searchVo);
			pagingInfo.setTotalRecord(totalRecord);
					
			//3. 결과 저장, 뷰페이지 리턴
			model.addAttribute("alist", alist);
			model.addAttribute("pagingInfo", pagingInfo);
		//3.
			return "admintemplet/eventNotice";
	}
	
	@RequestMapping("/eventNoticeDetail.do")
	public String admineventNoticeDetail(@RequestParam (defaultValue="0")int noticeNo,
			HttpServletRequest request,
			Model model){
		//1.
			logger.info("공지사항 상세보기 파라미터 noticeNo={}",noticeNo);
		//2.
			NoticeVO alist = noticeService.selectByNoNotice(noticeNo);
			logger.info("공지사항 상세보기 결과 파라미터 noticeVo={}",alist);
			
			
			model.addAttribute("alist", alist);
		//3.
			return "admintemplet/eventNoticeDetail";
		
	}
	
	@RequestMapping(value="/noticeUpdate.do", method=RequestMethod.GET)
	public String noticeUpdate_view(@RequestParam (defaultValue="0")int noticeNo,
			Model model){
		//1.
			
			logger.info("공지사항 수정 페이지 보여주기 파라미터 noticeNo={}",noticeNo);
		//2.
			NoticeVO alist=noticeService.selectByNoNotice(noticeNo);
			logger.info("공지사항 수정 보여주기 파라미터 noticeVo={}",alist);
			model.addAttribute("alist", alist);
		
		//3.
			return "admintemplet/noticeUpdate";
	}
	
	@RequestMapping(value="/noticeUpdate.do", method=RequestMethod.POST)
	public String noticeUpdate_post(@ModelAttribute NoticeVO noticeVo,
			@RequestParam String oldNoticeUpfileName,
			HttpServletRequest request){
		//1.
			logger.info("글 수정 처리, 파라미터 noticeVO={}", noticeVo);
			logger.info("글 수정 처리 파일 파라미터 oldeNoticefileName={}",oldNoticeUpfileName);
		//2.
			
			int uploadType = FileUploadWebUtil.IMAGE_UPLOAD;
			List<Map<String, Object>> fileList=fileUtil.fileUpload(request, uploadType);
			
			//업로드된 파일명 구해오기
			if(fileList!=null && !fileList.isEmpty()){
				String fileName="";
				for( Map<String, Object> mymap : fileList){
				fileName = (String) mymap.get("fileName");
				
				}//for
				
				noticeVo.setNoticeUpfileName(fileName);
				
				//기존 파일 삭제
				String upPath = fileUtil.getUploadPath(request,fileUtil.IMAGE_UPLOAD);
				File oldFile = new File(upPath, oldNoticeUpfileName); 
				if(oldFile.exists()){
					boolean bool =oldFile.delete();
					logger.info("기존 파일 삭제 여부={}", bool);
				}
			}else{
				//기존파일 세팅
				noticeVo.setNoticeUpfileName(oldNoticeUpfileName);
			}
			
			if(noticeVo.getNoticeSuffix().equals("notice")){
				noticeVo.setNoticeSuffix(noticeService.NOTICE);
			}else if(noticeVo.getNoticeSuffix().equals("event")){
				noticeVo.setNoticeSuffix(noticeService.EVENTE);
			}
			
			int cnt = noticeService.noticeUpdate(noticeVo);
			
			logger.info("파일 업로드 후 cnt={},noticeVo={}",cnt,noticeVo);
		//3.
		
		return "redirect:/admintemplet/eventNoticeDetail.do?noticeNo="+noticeVo.getNoticeNo();
	}
	
	@RequestMapping("/noticedelete.do")
	public String deleteNotice(@RequestParam (defaultValue="0")int noticeNo,
			@RequestParam String noticeUpfileName,
			HttpServletRequest request){
		//1.
			logger.info("공지사항 삭제 파라미터 noticeNo={},noticeUpfileName={}",noticeNo,noticeUpfileName);
		//2.
			
			int cnt = noticeService.deleteNotice(noticeNo);
			logger.info("공지사항 삭제 결과 cnt={}", cnt);
			
			//파일 삭제
			String upPath = fileUtil.getUploadPath(request,fileUtil.IMAGE_UPLOAD);
			File oldFile = new File(upPath, noticeUpfileName); 
			if(oldFile.exists()){
				boolean bool =oldFile.delete();
				logger.info("기존 파일 삭제 여부={}", bool);
			}
		//3.
			return "redirect:/admintemplet/eventNotice.do";
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
	
	

	@RequestMapping(value="/reply.do", method=RequestMethod.GET)
	public String replyView(@ModelAttribute SearchVO searchVo,
			Model model){
		
		//1.
			logger.info("reply 화면 보여주기");
		//2.
			logger.info("글목록 조회, 파라미터 searchVo={}",
					searchVo);
			
			PaginationInfo pagingInfo = new PaginationInfo();
			pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
			pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
			pagingInfo.setCurrentPage(searchVo.getCurrentPage());
			
			searchVo.setBlockSize(Utility.BLOCK_SIZE);
			searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
			searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
					
			//2. db작업 - select
			List<ReplyVO> alist = replyService.selectAllReply(searchVo); 
			logger.info("글목록 조회 결과 alist.size()={}", alist.size());
			
			//전체 레코드 개수 조회하기
			int totalRecord 
				= replyService.selectReplyTotalCount(searchVo);
			pagingInfo.setTotalRecord(totalRecord);
					
			//3. 결과 저장, 뷰페이지 리턴
			model.addAttribute("alist", alist);
			model.addAttribute("pagingInfo", pagingInfo);
		
			
			return "admintemplet/reply";
	}
	
	@RequestMapping("/faQ.do")
	public String faQView(@ModelAttribute SearchVO searchVo,
			Model model){
		//1.
		logger.info("F&Q 화면 보여주기");
	//2.
		logger.info("글목록 조회, 파라미터 searchVo={}",
				searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		//2. db작업 - select
		List<FaQVO> alist = faqService.selectAllFaQ(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= faqService.selectfaqTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
	//3.
		return "admintemplet/faQ";
	}
	
	@RequestMapping(value="/faQInsert.do", method=RequestMethod.GET)
	public String faQWrite_view(){
		//1.
			logger.info("FaQ 글쓰기 보여주기");
		//2.
		
		//3.
			return "admintemplet/faQInsert";
	}
	
	@RequestMapping(value="/faQInsert.do", method=RequestMethod.POST)
	public String faQWrite_post(@ModelAttribute FaQVO faqVo,
			HttpServletRequest request){
		//1.
		logger.info("F&Q 글쓰기 처리, 파라미터 FaQVO={}", faqVo);
		//2.
		
		//파일 업로드 처리
		int uploadType = FileUploadWebUtil.IMAGE_UPLOAD;
		List<Map<String, Object>> fileList=fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		String fileName="";
		for( Map<String, Object> mymap : fileList){
			fileName = (String) mymap.get("fileName");
			
		}
		
		faqVo.setFaqUpfilename(fileName);
		logger.info("파일등록 결과 파라미터 faqVO={}",faqVo);
		
		if(faqVo.getFaqCategori().equals("Member")){
			faqVo.setFaqCategori(faqService.FAQ_MEMBER);
		}else if(faqVo.getFaqCategori().equals("pay")){
			faqVo.setFaqCategori(faqService.FAQ_PAY);
		}else if(faqVo.getFaqCategori().equals("review")){
			faqVo.setFaqCategori(faqService.FAQ_REVIEW);
		}else if(faqVo.getFaqCategori().equals("play")){
			faqVo.setFaqCategori(faqService.FAQ_PLAY);
		}else if(faqVo.getFaqCategori().equals("advertise")){
			faqVo.setFaqCategori(faqService.FAQ_ADVERTISE);
		}else if(faqVo.getFaqCategori().equals("discomform")){
			faqVo.setFaqCategori(faqService.FAQ_DISCOMFORM);
		}else if(faqVo.getFaqCategori().equals("etc")){
			faqVo.setFaqCategori(faqService.FAQ_ETC);
		}
		
		int cnt = faqService.insertFaq(faqVo);
		logger.info("F&Q항 글등록 완료 cnt={}",cnt);
	//3.
		return "redirect:/admintemplet/faQ.do";
	}
	
	@RequestMapping("/faQDetail.do")
	public String faqdetail_view(@RequestParam (defaultValue="0")int faqNo,
			Model model){
		//1.
			logger.info("F&Q 자세히 보기 파라미터 faqNo={}",faqNo);
		//2.
			FaQVO alist = faqService.selectByNoFaq(faqNo);
			logger.info("faq 수정화면 보여주기 처리 결과 alist={}",alist);
			
			model.addAttribute("alist", alist);
		//3.
			return "admintemplet/faQDetail";
		//3.
	}
	
	@RequestMapping(value="/updateFaQ.do", method=RequestMethod.GET)
	public String faQUpdate_View(@RequestParam (defaultValue="0")int faqNo,
			Model model){
		//1.
			logger.info("faq 수정화면 보여주기 파라미터 faqNo={}",faqNo);
		//2.
			FaQVO alist = faqService.selectByNoFaq(faqNo);
			logger.info("faq 수정화면 보여주기 처리 결과 alist={}",alist);
			
			model.addAttribute("alist", alist);
		//3.
			return "admintemplet/updateFaQ";
	}
	
	@RequestMapping(value="/updateFaQ.do", method=RequestMethod.POST)
	public String faqUpdate_post(@ModelAttribute FaQVO faqVo, 
			@RequestParam String oldfaqUpfilename,
			HttpServletRequest request){
		//1.
		logger.info("글 수정 처리, 파라미터 FaQVO={}", faqVo );
		logger.info("글 수정 처리 파일 파라미터 oldfaqfileName={}",oldfaqUpfilename);
	//2.
		
		int uploadType = FileUploadWebUtil.IMAGE_UPLOAD;
		List<Map<String, Object>> fileList=fileUtil.fileUpload(request, uploadType);
		
		//업로드된 파일명 구해오기
		if(fileList!=null && !fileList.isEmpty()){
			String fileName="";
			for( Map<String, Object> mymap : fileList){
			fileName = (String) mymap.get("fileName");
			
			}//for
			
			faqVo.setFaqUpfilename(fileName);
			
			//기존 파일 삭제
			String upPath = fileUtil.getUploadPath(request,fileUtil.IMAGE_UPLOAD);
			File oldFile = new File(upPath, oldfaqUpfilename); 
			if(oldFile.exists()){
				boolean bool =oldFile.delete();
				logger.info("기존 파일 삭제 여부={}", bool);
			}
		}else{
			//기존파일 세팅
			
		}
		
		if(faqVo.getFaqCategori().equals("Member")){
			faqVo.setFaqCategori(faqService.FAQ_MEMBER);
		}else if(faqVo.getFaqCategori().equals("pay")){
			faqVo.setFaqCategori(faqService.FAQ_PAY);
		}else if(faqVo.getFaqCategori().equals("review")){
			faqVo.setFaqCategori(faqService.FAQ_REVIEW);
		}else if(faqVo.getFaqCategori().equals("play")){
			faqVo.setFaqCategori(faqService.FAQ_PLAY);
		}else if(faqVo.getFaqCategori().equals("advertise")){
			faqVo.setFaqCategori(faqService.FAQ_ADVERTISE);
		}else if(faqVo.getFaqCategori().equals("discomform")){
			faqVo.setFaqCategori(faqService.FAQ_DISCOMFORM);
		}else if(faqVo.getFaqCategori().equals("etc")){
			faqVo.setFaqCategori(faqService.FAQ_ETC);
		}
		
		int cnt = faqService.faqUpdate(faqVo);
		
		logger.info("파일 업로드 후 cnt={},noticeVo={}",cnt,faqVo);
	//3.
	
	return "redirect:/admintemplet/faQDetail.do?faqNo="+faqVo.getFaqNo();
	}
	
	@RequestMapping("/faqdelete.do")
	public String faqDelete(@RequestParam int faqNo,
			@RequestParam String faqUpfilename,
			HttpServletRequest request){
		//1.
			logger.info("FAQ삭제 파라미터 faqNo={}", faqNo);
		//2.
			int cnt = faqService.faqDelete(faqNo);
			logger.info("FAQ 삭제 결과 cnt={}",cnt);
			
			//파일 삭제
			String upPath = fileUtil.getUploadPath(request,fileUtil.IMAGE_UPLOAD);
			File oldFile = new File(upPath, faqUpfilename); 
			if(oldFile.exists()){
				boolean bool =oldFile.delete();
				logger.info("기존 파일 삭제 여부={}", bool);
			}
		//3.
			return "redirect:/admintemplet/faQ.do";
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
