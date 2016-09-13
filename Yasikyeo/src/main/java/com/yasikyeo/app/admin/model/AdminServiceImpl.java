package com.yasikyeo.app.admin.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAO adminDao;

	@Override
	public int loginCheck(AdminVO adminVo){
		
		int result=0;
		String dbPwd =adminDao.loginCheck(adminVo);
		if(dbPwd==null || dbPwd.isEmpty()){
			//해당 아이디가 없는 경우
			result=ID_NONE;
		}else{
			if(dbPwd.equals(adminVo.getAdminPwd())){
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
	public AdminVO selectMemberByMemberId(String adminId) {
		return adminDao.selectMemberByMemberId(adminId);
	}
}
