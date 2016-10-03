package com.yasikyeo.app.bookmark.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yasikyeo.app.bookmark.model.BookmarkService;
import com.yasikyeo.app.bookmark.model.BookmarkVO;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;

@Controller
public class BookmarkController {

	private static final Logger logger = LoggerFactory.getLogger(BookmarkController.class);
	
	@Autowired
	private BookmarkService bookmarkService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/addBookmark.do")
	@ResponseBody
	public String addBookmark(@RequestParam(defaultValue="0") int shopNo,
							HttpSession session){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("북마크 추가 파라미터 memberVo={}",memberVo);
		BookmarkVO bookmarkvo = new BookmarkVO(shopNo, memberVo.getMemberNo());
		int bookmarkcnt = bookmarkService.insertBookMark(bookmarkvo);
		logger.info("북마크추가 결과 bookmarkcnt={}",bookmarkcnt);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("shopHit", 1);
		map.put("shopNo", shopNo);
		logger.info("map={}",map);
		int bookmarkUpdatecnt =bookmarkService.updateCeoShopBookmarkCnt(map);
		logger.info("북마크추가후 업소 즐겨찾기횟수 업뎃 결과 bookmarkUpdatecnt={}",bookmarkUpdatecnt);
		return bookmarkcnt+"";
	}
	
	@RequestMapping("/deleteBookmark.do")
	@ResponseBody
	public String deleteBookmark(@RequestParam(defaultValue="0") int shopNo,
							HttpSession session){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo = memberService.selectMemberByMemberId(memberId);
		logger.info("북마크 삭제 파라미터 memberVo={}",memberVo);
		BookmarkVO bookmarkvo = new BookmarkVO(shopNo, memberVo.getMemberNo());
		int bookmarkcnt = bookmarkService.deleteBookmark(bookmarkvo);
		logger.info("북마크삭제 결과 bookmarkcnt={}",bookmarkcnt);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("shopHit", -1);
		map.put("shopNo", shopNo);
		logger.info("map={}",map);
		int bookmarkUpdatecnt =bookmarkService.updateCeoShopBookmarkCnt(map);
		logger.info("북마크삭제후 업소 즐겨찾기횟수 업뎃 결과 bookmarkUpdatecnt={}",bookmarkUpdatecnt);
		return bookmarkcnt+"";
	}
}
