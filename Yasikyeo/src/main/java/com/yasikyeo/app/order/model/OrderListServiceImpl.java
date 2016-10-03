package com.yasikyeo.app.order.model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.point.model.MemberPointDAO;
import com.yasikyeo.app.point.model.MemberPointVO;

@Service
public class OrderListServiceImpl implements OrderListService{

	@Autowired
	private OrderListDAO orderListDao;
	@Autowired
	private MemberPointDAO pointDao;
	
	
	@Override
	public Map<String, Integer> insertOrderList(OrderListVO orderListVo, List<OrderDetVO> odList) {
		
		Map<String, Integer> result = new HashMap<String, Integer>();
		
		orderListVo.setOrderlistSavepoint(orderListVo.getOrderlistPrice()/1000);
		int inorderListCnt = orderListDao.insertOrderList(orderListVo);
		result.put("inOrderLCnt", inorderListCnt);
		
		int inOrderDCnt=0;
		for(OrderDetVO det : odList){
			det.setOrderlistNo(orderListVo.getOrderlistNo());
			inOrderDCnt += orderListDao.insertOrderDet(det);
		}
		result.put("inOrderDCnt", inOrderDCnt);
		
		int pointCnt = 0;
		if(orderListVo.getOrderlistPaypoint()>0){
			MemberPointVO pointvo = new MemberPointVO("포인트 사용", orderListVo.getOrderlistPaypoint(), orderListVo.getMemberNo(), orderListVo.getOrderlistNo());
			pointCnt += pointDao.insertPoint(pointvo);
		}
		
		if(orderListVo.getOrderlistSavepoint()>0){
			MemberPointVO pointvo = new MemberPointVO();
			pointvo.setMember_no(orderListVo.getMemberNo());
			pointvo.setOrderlist_no(orderListVo.getOrderlistNo());
			pointvo.setPoint_point(orderListVo.getOrderlistSavepoint());
			pointCnt += pointDao.insertPoint(pointvo);
		}
		result.put("pointCnt", pointCnt);
		
		return result;
	}

}
