package com.yasikyeo.app.admin.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.ceo.model.CeoVO;
import com.yasikyeo.app.member.model.MemberVO;

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

	@Override
	public List<MemberVO> selectMember() {
		return adminDao.selectMember();
	}

	@Override
	public List<CeoVO> selectCeo() {
		return adminDao.selectCeo();
	}

	@Override
	public MemberVO selectByNoMember(int memberNo) {
		return adminDao.selectByNoMember(memberNo);
	}

	@Override
	public CeoVO selectByNoCeoMember(int ceoNo) {
		return adminDao.selectByNoCeoMember(ceoNo);
	}

	@Override
	public int updateStop(int memberNo) {
		return adminDao.updateStop(memberNo);
	}

	@Override
	public int updateUser(int memberNo) {
		return adminDao.updateUser(memberNo);
	}

	@Override
	public int updateCeoStop(int ceoNo) {
		return adminDao.updateCeoStop(ceoNo);
	}

	@Override
	public int updateCeo(int ceoNo) {
		return adminDao.updateCeo(ceoNo);
	}
}
