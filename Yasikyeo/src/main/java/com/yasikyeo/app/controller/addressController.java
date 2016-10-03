package com.yasikyeo.app.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class addressController {

	private static final Logger logger = LoggerFactory.getLogger(addressController.class);
	
	@RequestMapping("/getAddrApi.do")
    public void getAddrApi(HttpServletRequest req, ModelMap model, HttpServletResponse response) throws Exception {
		// 요청변수 설정
    	String currentPage = req.getParameter("currentPage");
		String countPerPage = req.getParameter("countPerPage");
		String confmKey = req.getParameter("confmKey");
		String keyword = req.getParameter("keyword");
		
		logger.info("ajax-요청 처리, currentPage={},keyword={}",
				currentPage, keyword);
		
		// OPEN API 호출 URL 정보 설정
		String apiUrl = "http://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage="+currentPage+"&countPerPage="+countPerPage+"&keyword="+URLEncoder.encode(keyword,"UTF-8")+"&confmKey="+confmKey;
		URL url = new URL(apiUrl);
    	BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
    	StringBuffer sb = new StringBuffer();
    	String tempStr = null;

    	while(true){
    		tempStr = br.readLine();
    		if(tempStr == null) break;
    		sb.append(tempStr);								// 응답결과 XML 저장
    	}
    	br.close();
    	response.setCharacterEncoding("UTF-8");
		response.setContentType("text/xml");
		response.getWriter().write(sb.toString());			// 응답결과 반환
    }
	
	@RequestMapping("/getAddrApi1.do")
    public void getAddrApi1(HttpServletRequest req, ModelMap model, HttpServletResponse response) throws Exception {
		// 요청변수 설정
    	String currentPage = req.getParameter("currentPage");
		String countPerPage = req.getParameter("countPerPage");
		String confmKey = req.getParameter("confmKey");
		String keyword = req.getParameter("keyword");
		
		logger.info("ajax-요청 처리, currentPage={},keyword={}",
				currentPage, keyword);
		
		// OPEN API 호출 URL 정보 설정
		String apiUrl = "http://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage="+currentPage+"&countPerPage="+countPerPage+"&keyword="+URLEncoder.encode(keyword,"UTF-8")+"&confmKey="+confmKey;
		URL url = new URL(apiUrl);
    	BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
    	StringBuffer sb = new StringBuffer();
    	String tempStr = null;

    	while(true){
    		tempStr = br.readLine();
    		if(tempStr == null) break;
    		sb.append(tempStr);								// 응답결과 XML 저장
    	}
    	br.close();
    	response.setCharacterEncoding("UTF-8");
		response.setContentType("text/xml");
		response.getWriter().write(sb.toString());			// 응답결과 반환
    }
	
	
	@RequestMapping("/setDefultAddress.do")
	@ResponseBody
	public void setDefultAddress(HttpSession session){
		session.setAttribute("si", "서울특별시");
		session.setAttribute("gu", "영등포구");
		session.setAttribute("dong", "당산동1가");
	}
	@RequestMapping("/setAddress.do")
	@ResponseBody
	public void setAddress(HttpSession session,
				@RequestParam String si,
				@RequestParam String gu,
				@RequestParam String dong){
		session.setAttribute("si", si);
		session.setAttribute("gu", gu);
		session.setAttribute("dong", dong);
	}
}
