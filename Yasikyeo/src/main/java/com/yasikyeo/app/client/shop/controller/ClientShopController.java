package com.yasikyeo.app.client.shop.controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.yasikyeo.app.bookmark.model.BookmarkService;
import com.yasikyeo.app.bookmark.model.BookmarkVO;
import com.yasikyeo.app.categori.model.CategoriService;
import com.yasikyeo.app.categori.model.CategoriVO;
import com.yasikyeo.app.ceo.shop.model.CeoProductVO;
import com.yasikyeo.app.ceo.shop.model.CeoShopService;
import com.yasikyeo.app.ceo.shop.model.CeoShopVO;
import com.yasikyeo.app.common.PaginationInfo;
import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.common.SearchVO2;
import com.yasikyeo.app.common.Utility;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;
import com.yasikyeo.app.order.model.OrderListService;
import com.yasikyeo.app.review.model.ReviewService;

@Controller
@RequestMapping("/shop")
public class ClientShopController {

	private static final Logger logger = LoggerFactory.getLogger(ClientShopController.class);
	
	@Autowired
	private CeoShopService shopService;
	
	@Autowired
	private CategoriService cateService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BookmarkService bookmarkService;
	
	@Autowired
	private OrderListService orderListService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/client_shop_list.do")
	public void clientShopList(@ModelAttribute SearchVO2 searchVo2,
			@RequestParam String menu,
			HttpSession session, Model model){
		String si = (String)session.getAttribute("si");
		String gu = (String)session.getAttribute("gu");
		String dong = (String)session.getAttribute("dong");
		
		searchVo2.setSi(si);
		searchVo2.setGu(gu);
		searchVo2.setDong(dong);
		searchVo2.setCategori(menu);
		
		logger.info("상점리스트 보여주기 파라미터 si={},gu={}",si,gu);
		logger.info("상점리스트 보여주기 파라미터 dong={},munu={}",dong,menu);
		logger.info("searchVo2.getSearchCondition={}",searchVo2.getSearchCondition());
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_SHOP_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_SHOP_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo2.getCurrentPage());
		
		searchVo2.setBlockSize(Utility.CLIENT_SHOP_BLOCK_SIZE);
		searchVo2.setRecordCountPerPage(Utility.CLIENT_SHOP_RECODE_COUNT_PER_PAGE);
		searchVo2.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<CeoShopVO> list = shopService.selectShopByCategory(searchVo2);
		logger.info("상점검색결과 갯수 list.size={}",list.size());
		

		int totalRecord 
		= shopService.countShopByCategory(searchVo2);
		pagingInfo.setTotalRecord(totalRecord);
		logger.info("상점검색결과 갯수 totalRecord={}",totalRecord);
		
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("shopList", list);
		
	}
	@RequestMapping("/client_shop_det.do")
	public void clientShopDetail(@RequestParam(defaultValue="0") int no,
								@ModelAttribute SearchVO searchVo,
								HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		int bookmarkcnt=0;
		int orderCnt=0;
		MemberVO memberVo = null;
		if(memberId!=null && memberId!=""){
			memberVo = memberService.selectMemberByMemberId(memberId);
			logger.info("업소상세내역 조회 파라미터 memberVo={}",memberVo);
			BookmarkVO bookmarkvo = new BookmarkVO(no, memberVo.getMemberNo());
			bookmarkcnt = bookmarkService.selectCountBookmark(bookmarkvo);
			
			Map<String, Object> map =new HashMap<String, Object>();
			map.put("memberNo", memberVo.getMemberNo());
			map.put("shopNo", no);
			orderCnt=orderListService.selectCountOrderList(map);
		}
		logger.info("북마크내역조회 bookmarkcnt={}",bookmarkcnt);
		logger.info("구매내역조회 orderCnt={}",orderCnt);
		
		
		logger.info("업소 상세내역조회하기 파라미터 no={}",no);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.CLIENT_SHOP_BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.CLIENT_SHOP_RECODE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.CLIENT_SHOP_BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.CLIENT_SHOP_RECODE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setSearchKeyword(no+"");
		List<Map<String, Object>>reviewMap =reviewService.selectReview(searchVo);
		logger.info("리뷰 검색 결과 reviewMap={}",reviewMap);
		int totalRecord 
		= reviewService.selectCountReview(no);
		pagingInfo.setTotalRecord(totalRecord);
		logger.info("리뷰 총 검색 결과 totalRecord={}",totalRecord);
		
		
		CeoShopVO shopVo = shopService.selectByShopNo(no);
		logger.info("업소 상세내역 조회결과 shopVo={}",shopVo);
		
		List<CategoriVO> cateList = cateService.selectByShopNo(no);
		logger.info("업소 카테고리 조회결과 cateList.size={}",cateList.size());
		
		List<CeoProductVO> productList= shopService.productSelectByShopNo(no);
		logger.info("업소 상품 조회결과 productList.size={}",productList.size());
		
		
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("reviewMap", reviewMap);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("orderCnt", orderCnt);
		model.addAttribute("bookmarkcnt", bookmarkcnt);
		model.addAttribute("shop", shopVo);
		model.addAttribute("cateList", cateList);
		model.addAttribute("productList", productList);
		
	}
}
