package com.yasikyeo.app.point.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class MemberPointServiceImpl implements MemberPointService{

	@Autowired
	private MemberPointDAO memberPointDao;
	
	
	@Override
	public List<Map<String, Object>> selectPoint(SearchVO searchVo) {
		return memberPointDao.selectPoint(searchVo);
	}

	@Override
	public int selectCountPoint(SearchVO searchVo) {
		return memberPointDao.selectCountPoint(searchVo);
	}

}
