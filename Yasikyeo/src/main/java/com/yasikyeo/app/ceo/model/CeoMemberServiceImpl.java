package com.yasikyeo.app.ceo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CeoMemberServiceImpl implements CeoMemberService {

	@Autowired
	private CeoMemberDAO ceomemberDao;
	
	@Override
	public int insertMember(CeoVO ceoVo) {
		return ceomemberDao.insertMember(ceoVo);
	}
	
	@Override
	public int checkMemberId(String ceoId){
		//아이디 중복확인
		int result=0;
		
		int count = ceomemberDao.checkMemberId(ceoId);
		if(count>0){ //해당 아이디가 이미 존재하는 경우
			result=EXIST_ID;
		}else{ //해당 아이디가 없는 경우
			result=NONE_EXIST_ID;
		}
		
		return result;		
	}

	
	public int loginCheck(CeoVO ceoVo){
		int result=0;
		
		String dbPwd = ceomemberDao.loginCheck(ceoVo);
		if(dbPwd==null || dbPwd.isEmpty()){
			//해당 아이디가 없는 경우
			result=ID_NONE;
		}else{
			if(dbPwd.equals(ceoVo.getCeoPwd())){
				//비밀번호도 일치 => 로그인 성공
				result=LOGIN_OK;
			}else{
				//비밀번호가 일치하지 않는 경우
				result=PWD_DISAGREE; 
			}
		}
		return result;
	}
	
	@Override
	public int checkPwd(CeoVO ceoVo) {
		int result=0;
		
		String dbPwd = ceomemberDao.loginCheck(ceoVo);
		if(dbPwd.equals(ceoVo.getCeoPwd())){
			result=CHANGE_PWD_AGREE;
		}else{
			result=CHANGE_PWD_DISAGREE; 
		}
				
		return result;
	}

	@Override
	public CeoVO selectMemberByMemberId(String ceoId) {
		return ceomemberDao.selectMemberByMemberId(ceoId);
	}

	@Override
	public int updateMember(CeoVO ceoVo) {
				
		if(ceoVo.getCeoPwd()!=null && !ceoVo.getCeoPwd().isEmpty()){
			ceomemberDao.changePwd(ceoVo);
		}
		
		return ceomemberDao.updateMember(ceoVo);
	}

	@Override
	public int withdrawMember(String ceoId) {
		return ceomemberDao.withdrawMember(ceoId);
	}

	@Override
	public String selectMemberByMemberTel(CeoVO ceoVo) {
		return ceomemberDao.selectMemberByMemberTel(ceoVo);
	}

	@Override
	public int findPwd(CeoVO ceoVo) {
		return ceomemberDao.findPwd(ceoVo);
	}

}
