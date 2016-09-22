package com.yasikyeo.app.ceo.shop.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CeoShopServiceImpl implements CeoShopService{
	
	@Autowired
	private CeoShopDAO ceoShopDao;
	
	@Override
	public int insertCeoShop(CeoShopVO ceoShopVo,String ceoId){
		
		int ceoNo = ceoShopDao.selectCeoNo(ceoId);
		
		ceoShopVo.setCeoNo(ceoNo);
		
		return ceoShopDao.insertCeoShop(ceoShopVo);
	}

	@Override
	public int selectCeoNo(String ceoId) {
		return ceoShopDao.selectCeoNo(ceoId);
	}

	@Override
	public int selectShop(int ceoNo) {
		return ceoShopDao.selectShop(ceoNo);
	}
}







