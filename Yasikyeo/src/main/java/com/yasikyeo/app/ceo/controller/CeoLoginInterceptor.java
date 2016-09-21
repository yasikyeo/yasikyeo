package com.yasikyeo.app.ceo.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class CeoLoginInterceptor extends HandlerInterceptorAdapter  {

	private static final Logger logger
	=LoggerFactory.getLogger(CeoLoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("컨트롤러 수행 전 호출 - preHandle()");
		
		HttpSession session = request.getSession();
		String memberId	= (String) session.getAttribute("ceoId");
		
		if(memberId==null || memberId.isEmpty()){
			request.setAttribute("msg", "로그인 후 이용가능합니다");
			request.setAttribute("url", "/ceo/index.do");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/common/message.jsp");
			dispatcher.forward(request, response);
			
			return false;
		}else{
			return true;
		}
		
		
	}

	
}







