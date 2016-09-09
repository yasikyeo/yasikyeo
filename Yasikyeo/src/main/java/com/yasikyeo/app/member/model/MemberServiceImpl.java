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
	
}
