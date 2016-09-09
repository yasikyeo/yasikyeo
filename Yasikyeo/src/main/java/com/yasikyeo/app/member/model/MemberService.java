package com.yasikyeo.app.member.model;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	public int insertMember(MemberVO vo);
}
