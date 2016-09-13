package com.yasikyeo.app.admin.controller;

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
public class LoginInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger 
	= LoggerFactory.getLogger(LoginInterceptor.class);
	
	/*
	 	memberEdit.do => DispatcherServlet => HandlerMapping
	 	=>
	 		[1] preHandle() - 컨트롤러 실행전 실행되는 메서드
	 		
	 	=> 해당 Controller의 Handler
	 		[2] postHandle() - 컨트롤러 실행 후 호출
	 	
	 	=> 뷰
	 	
	 		[3] afterCompletion() - 뷰 생성 후 호출
	 	
	  */
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		logger.info("뷰 생성 후 afterCompleTion 실행됨!");
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		logger.info("컨트롤러 실행 후 postHandle() 실행됨");
		
	}

	@Override
	public boolean preHandle(HttpServletRequest  request, HttpServletResponse response, Object arg2) throws Exception {
		logger.info("컨트롤러 실행 전 먼저 preHandle()메서드가 실행됨");
		
		//로그인이 안된 경우 먼저 로그인하도록 에러 처리
		HttpSession session= request.getSession();
		String adminId = (String)session.getAttribute("adminId");
		
		if(adminId==null || adminId.isEmpty()){
			request.setAttribute("msg", "먼저 로그인하세요");
			request.setAttribute("url", "/admintemplet/adminMain.do");
			RequestDispatcher dispatcher
			=request.getRequestDispatcher("/WEB-INF/views/common/message.jsp");
			dispatcher.forward(request, response);
			return false;	//
		}else{
			return true;
		}
	}
	
}
