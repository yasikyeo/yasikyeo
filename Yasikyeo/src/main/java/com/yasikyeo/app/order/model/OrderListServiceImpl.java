package com.yasikyeo.app.order.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yasikyeo.app.common.SearchVO;
import com.yasikyeo.app.point.model.MemberPointDAO;
import com.yasikyeo.app.point.model.MemberPointVO;

@Service
public class OrderListServiceImpl implements OrderListService{

	@Autowired
	private OrderListDAO orderListDao;
	@Autowired
	private MemberPointDAO pointDao;
	
	private static final Logger logger = LoggerFactory.getLogger(OrderListServiceImpl.class);
	
	@Override
	@Transactional
	public Map<String, Integer> insertOrderList(OrderListVO orderListVo, List<OrderDetVO> odList) {
		
		Map<String, Integer> result = new HashMap<String, Integer>();
		
		orderListVo.setOrderlistSavepoint(orderListVo.getOrderlistPrice()/1000);
		logger.info("orderListVo={}",orderListVo);
		
		int inorderListCnt = orderListDao.insertOrderList(orderListVo);
		result.put("inOrderLCnt", inorderListCnt);
		
		int inOrderDCnt=0;
		for(OrderDetVO det : odList){
			if(det.getOrderdetOption()==null){
				det.setOrderdetOption("");
				det.setOrderdetOptionprice(0);
			}
			det.setOrderlistNo(orderListVo.getOrderlistNo());
			logger.info("선택메뉴 det={}",det);
			inOrderDCnt += orderListDao.insertOrderDet(det);
		}
		result.put("inOrderDCnt", inOrderDCnt);
		
		int pointCnt = 0;
		if(orderListVo.getOrderlistPaypoint()>0){
			MemberPointVO pointvo = new MemberPointVO("포인트 사용", orderListVo.getOrderlistPaypoint(), orderListVo.getMemberNo(), orderListVo.getOrderlistNo());
			pointCnt += pointDao.insertPoint(pointvo);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("memberPoint", -pointvo.getPointPoint());
			map.put("memberNo", pointvo.getMemberNo());
			pointCnt += pointDao.updatePoint(map);
		}
		
		if(orderListVo.getOrderlistSavepoint()>0){
			MemberPointVO pointvo = new MemberPointVO();
			pointvo.setMemberNo(orderListVo.getMemberNo());
			pointvo.setOrderlistNo(orderListVo.getOrderlistNo());
			pointvo.setPointPoint(orderListVo.getOrderlistSavepoint());
			pointvo.setPointType("적립완료");
			pointCnt += pointDao.insertPoint(pointvo);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("memberPoint", pointvo.getPointPoint());
			map.put("memberNo", pointvo.getMemberNo());
			pointCnt += pointDao.updatePoint(map);
		}
		result.put("pointCnt", pointCnt);
		
		return result;
	}

	@Override
	public OrderListVO selectOrderList(int orderlistNo) {
		return orderListDao.selectOrderList(orderlistNo);
	}

	@Override
	public List<OrderDetVO> selectOrderDet(int orderlistNo) {
		return orderListDao.selectOrderDet(orderlistNo);
	}

	@Override
	public List<Map<String, Object>> selectOrderListView(SearchVO searchVo) {
		return orderListDao.selectOrderListView(searchVo);
	}

	@Override
	public int selectCountOrderListView(int memberNo) {
		return orderListDao.selectCountOrderListView(memberNo);
	}

	@Override
	public Map<String, Object> selectOrderListViewByListNo(int orderlistNo) {
		return orderListDao.selectOrderListViewByListNo(orderlistNo);
	}

	@Override
	public List<Integer> selectShopnofromOrderList(int memberNo) {
		return orderListDao.selectShopnofromOrderList(memberNo);
	}

	@Override
	public List<OrderListAllVo> selectOrderListviews(SearchVO searchVo) {
		return orderListDao.selectOrderListviews(searchVo);
	}

	@Override
	public int selectCountOrderList(Map<String, Object> map) {
		return orderListDao.selectCountOrderList(map);
	}

}
