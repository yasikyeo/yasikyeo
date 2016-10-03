package com.yasikyeo.app.point.model;

import java.util.Map;

public interface MemberPointDAO {

	public int insertPoint(MemberPointVO memberPointVo);
	public int updatePoint(Map<String, Object> map);
}
