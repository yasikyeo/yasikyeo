package com.yasikyeo.app.mypage.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

import com.yasikyeo.app.bookmark.model.BookmarkService;
import com.yasikyeo.app.bookmark.model.BookmarkVO;
import com.yasikyeo.app.ceo.shop.model.CeoShopService;
import com.yasikyeo.app.ceo.shop.model.CeoShopVO;
import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.common.PaginationInfo;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.common.SearchVO2;
import com.yasikyeo.app.common.Utility;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;
import com.yasikyeo.app.order.model.OrderDetVO;
import com.yasikyeo.app.order.model.OrderListAllVo;
import com.yasikyeo.app.order.model.OrderListService;
import com.yasikyeo.app.order.model.OrderListVO;
import com.yasikyeo.app.point.model.MemberPointService;
import com.yasikyeo.app.review.model.ReviewService;
import com.yasikyeo.app.review.model.ReviewVO;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private FileUploadWebUtil fileUploadWebUil;
	
	@Autowired
	private OrderListService orderListService;
	
	@Autowired
	private MemberPointService memberPointService;
	
	@Autowired
	private CeoShopService ceoShopService;
	
	@Autowired
	private BookmarkService bookmarkService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/client_mypage.do")
	public void MyPage(HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("마이페이지 보여주기 파라미터 memberVo={}",memberVo);
		List<Integer>shopNoList =orderListService.selectShopnofromOrderList(memberVo.getMemberNo());
		logger.info("shopNoList={}",shopNoList);
		
		List<CeoShopVO> shopList = new ArrayList<CeoShopVO>();
		
		for(int shopNo:shopNoList){
			logger.info("shopNo={}",shopNo);
			CeoShopVO shopVo = ceoShopService.selectByShopNo(shopNo);
			shopList.add(shopVo);
		}
		logger.info("shopList={}",shopList);
		
		List<CeoShopVO> bookmarkshopList = new ArrayList<CeoShopVO>();
		List<BookmarkVO>bookmarkList = bookmarkService.selectBookmark(memberVo.getMemberNo());
		for(BookmarkVO bookmark:bookmarkList){
			CeoShopVO shopVo = ceoShopService.selectByShopNo(bookmark.getShopNo());
			bookmarkshopList.add(shopVo);
		}
		logger.info("bookmarkshopList={}",bookmarkshopList);
		
		model.addAttribute("shopList", shopList);
		model.addAttribute("bookmarkshopList", bookmarkshopList);
		
	}
	
	@RequestMapping("/client_mypoint.do")
	public void MyPoint(@ModelAttribute SearchVO searchVo,
							HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("내포인트확인 memberVo={}",memberVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setSearchKeyword(memberVo.getMemberNo()+"");
		
		logger.info("searchVo={}",searchVo);
		List<Map<String, Object>>pointList = memberPointService.selectPoint(searchVo);
		int totalRecord = memberPointService.selectCountPoint(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("pointList", pointList);
		
	}
	@RequestMapping("/client_myreview.do")
	public void MyReview(@ModelAttribute SearchVO searchVo,
						HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("나의리뷰내역보기 memberVo={}",memberVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setSearchKeyword(memberVo.getMemberNo()+"");
		
		List<Map<String, Object>>reviewMap = reviewService.selectReviewbyMemberNO(searchVo);
		int totalRecord = reviewService.selectCountReviewByMemberNo(memberVo.getMemberNo());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("reviewMap", reviewMap);
	}
	
	@RequestMapping("/client_paymentList.do")
	public void MyPaymentList(@ModelAttribute SearchVO searchVo,
								HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("바로결제내역보기 memberVo={}",memberVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setSearchKeyword(memberVo.getMemberNo()+"");
		
		List<Map<String, Object>>orderlistview = orderListService.selectOrderListView(searchVo);
		int totalRecord = orderListService.selectCountOrderListView(memberVo.getMemberNo());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("orderlistview", orderlistview);
	}
	
	@RequestMapping("/client_myreview_reg_possible.do")
	public void MyReview_reg(@ModelAttribute SearchVO searchVo,
			HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("작성가능 리뷰 내역보기 memberVo={}",memberVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.CLIENT_PAYMENTLIST_BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.CLIENT_PAYMENTLIST_RECODE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setSearchKeyword(memberVo.getMemberNo()+"");
		
		List<OrderListAllVo>orderlistAllviews = orderListService.selectOrderListviews(searchVo);
		logger.info("orderlistAllviews={}",orderlistAllviews);
		
		int totalRecord = orderListService.selectCountOrderListView(memberVo.getMemberNo());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("orderlistAllviews", orderlistAllviews);
	}
	
	@RequestMapping(value="/client_myinfo.do",method=RequestMethod.GET)
	public void MyInfo(HttpSession session,Model model){
		
		String memberId = (String) session.getAttribute("memberId");
		
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		
		model.addAttribute("memberVo",memberVo);
	}

	@RequestMapping(value="/client_myinfo.do",method=RequestMethod.POST)
	public String MyInfo(@ModelAttribute MemberVO memberVo,
			@RequestParam String oldfilename,
			HttpServletRequest request,Model model){
		
		if(memberVo.getMemberNickname()==null||memberVo.getMemberNickname().isEmpty()){
			memberVo.setMemberNickname(memberVo.getMemberId());
		}
		logger.info("파라미터 memberVo={},oldfilename={}",memberVo,oldfilename);
		
		List<Map<String, Object>> fileList = fileUploadWebUil.fileUpload(request, fileUploadWebUil.PROFILE_IMAGE_UPLOAD);
		//새로 파일을 업로드하는 경우
		if(fileList!=null && !fileList.isEmpty()){
			String fileName="";
			for(Map<String, Object> fileMap: fileList){
				 fileName=(String) fileMap.get("fileName");
			}//for
			memberVo.setMemberImage(fileName);
			
			//기존 파일이 존재하면, 기존 파일 삭제
			if(!oldfilename.equals("profile.png")){//디폴트 이미지가 아니면서
				String upPath = fileUploadWebUil.getUploadPath(request, fileUploadWebUil.PROFILE_IMAGE_UPLOAD);
				File oldFile = new File(upPath, oldfilename);
				if(oldFile.exists()){
					boolean bool =oldFile.delete();
					logger.info("기존 파일 삭제 여부={}", bool);
				}
			}
		}else{
			//업로드하지 않는 경우
			//=> 기존 파일 정보를 다시 셋팅해준다
			memberVo.setMemberImage(oldfilename);
		}//if
		
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
	
	@RequestMapping("/client_baro_det.do")
	public void borodetail(@RequestParam(defaultValue="0") int orderlistNo,Model model){
		
		List<OrderDetVO>orderDetList =  orderListService.selectOrderDet(orderlistNo);
		logger.info("orderDetList={}",orderDetList);
		
		Map<String, Object>OrderListView = orderListService.selectOrderListViewByListNo(orderlistNo);
		logger.info("OrderListView={}",OrderListView);
		
		model.addAttribute("orderDetList", orderDetList);
		model.addAttribute("OrderListView", OrderListView);
		
	}
}
