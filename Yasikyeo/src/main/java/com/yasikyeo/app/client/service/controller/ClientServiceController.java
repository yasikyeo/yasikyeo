package com.yasikyeo.app.client.service.controller;

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

import com.yasikyeo.app.common.FileUploadWebUtil;
import com.yasikyeo.app.member.model.MemberService;
import com.yasikyeo.app.member.model.MemberVO;
import com.yasikyeo.app.qna.model.QnaService;
import com.yasikyeo.app.qna.model.QnaVo;

@Controller
@RequestMapping("/service")
public class ClientServiceController {

	private static final Logger logger = LoggerFactory.getLogger(ClientServiceController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private QnaService qnaService;
	
	@Autowired
	private FileUploadWebUtil fileUploadWebUil;
	
	@RequestMapping("/client_faq.do")
	public void client_faq(){
		logger.info("자주하는질문페이지 보여주기");
	}
	@RequestMapping("/client_service.do")
	public void clientService(){
		
	}
	@RequestMapping("/client_board.do")
	public void clientBoard(){
		
	}
	@RequestMapping("/client_board_detail.do")
	public void clientBoardDetail(){
		
	}
	@RequestMapping(value="/client_qna.do",method=RequestMethod.GET)
	public void clientQnaGet(HttpSession session,Model model){
		String memberId = (String) session.getAttribute("memberId");
		MemberVO memberVo=null;
		if(memberId!=null && memberId!=""){
			memberVo = memberService.selectMemberByMemberId(memberId);
			logger.info("Qna글쓰기 보기 파라미터 memberVo={}",memberVo);
		}
		model.addAttribute("memberVo", memberVo);
	}
	@RequestMapping(value="/client_qna.do",method=RequestMethod.POST)
	public String clientQnaPost(@ModelAttribute QnaVo qnaVo,
			HttpServletRequest request){
		logger.info("Qna글쓰기 처리 파라미터 qnaVo={}",qnaVo);
		
		List<Map<String, Object>> fileList = fileUploadWebUil.fileUpload(request, fileUploadWebUil.REVIEW_IMAGE_UPLOAD);
		//새로 파일을 업로드하는 경우
		qnaVo.setQnaUpfilename("");
		qnaVo.setQnaUpfilename2("");
		qnaVo.setQnaUpfilename3("");
		qnaVo.setQnaOriginfilename("");
		qnaVo.setQnaOriginfilename2("");
		qnaVo.setQnaOriginfilename3("");
		
		if(fileList!=null && !fileList.isEmpty()){
			String fileName="";
			String oidfileName="";
			logger.info("fileList.size={}",fileList.size());
									
			for(int i=0; i<fileList.size();i++){
				Map<String, Object> fileMap = fileList.get(i);
				fileName=(String) fileMap.get("fileName");
				oidfileName=(String) fileMap.get("ofileName");
				if(i==0){
					qnaVo.setQnaUpfilename(fileName);
					qnaVo.setQnaOriginfilename(oidfileName);
				}else if(i==1){
					qnaVo.setQnaUpfilename2(fileName);
					qnaVo.setQnaOriginfilename2(oidfileName);
				}else if(i==2){
					qnaVo.setQnaUpfilename3(fileName);
					qnaVo.setQnaOriginfilename3(oidfileName);
				}
			}
		}
		
		logger.info("qna DB 입력전 qnaVo={}",qnaVo);
		int cnt = qnaService.insertQna(qnaVo);
		logger.info("qna 등록 결과 cnt={}",cnt);
		
		return "redirect:/client_qna_list.do";
	}
	@RequestMapping("/client_qna_list.do")
	public void clientQnaList(){
		
	}
	@RequestMapping("/client_qna_view.do")
	public void clientQnaView(){
		
	}
	
}
