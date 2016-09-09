package com.yasikyeo.app.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public int insertMember(MemberVO vo) {
		return memberDao.insertMember(vo);
	}
	
	@Override
	public int checkMemberId(String member_Id){
		//아이디 중복확인
		int result=0;
		
		int count = memberDao.checkMemberId(member_Id);
		if(count>0){ //해당 아이디가 이미 존재하는 경우
			result=EXIST_ID;
		}else{ //해당 아이디가 없는 경우
			result=NONE_EXIST_ID;
		}
		
		return result;		
	}

	
	public int loginCheck(MemberVO memberVo){
		int result=0;
		
		String dbPwd =memberDao.loginCheck(memberVo);
		if(dbPwd==null || dbPwd.isEmpty()){
			//해당 아이디가 없는 경우
			result=ID_NONE;
		}else{
			if(dbPwd.equals(memberVo.getMember_Pwd())){
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
	public MemberVO selectMemberByMemberId(String member_Id) {
		return memberDao.selectMemberByMemberId(member_Id);
	}

	@Override
	public int updateMember(MemberVO vo) {
		return memberDao.updateMember(vo);
	}

	@Override
	public int withdrawMember(String member_Id) {
		return memberDao.withdrawMember(member_Id);
	}
	
}
