package com.yasikyeo.app.point.model;

import java.util.List;
import java.util.Map;

import com.yasikyeo.app.common.SearchVO;

public interface MemberPointService {

	public List<Map<String, Object>> selectPoint(SearchVO searchVo);
	public int selectCountPoint(SearchVO searchVo);
}
