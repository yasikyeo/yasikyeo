package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	@Override
	public int insertCeoProduct(CeoProductVO ceoProductVo,int ceoNo) {
		
		int shopNo = ceoShopDao.selectShopNo(ceoNo);
		
		ceoProductVo.setShopNo(shopNo);
	
		return ceoShopDao.insertCeoProduct(ceoProductVo);
	}

	@Override
	public int selectShopNo(int ceoNo) {
		return ceoShopDao.selectShopNo(ceoNo);
	}

	@Override
	public CeoShopVO selectCeoShop(int ceoNo) {
		return ceoShopDao.selectCeoShop(ceoNo);
	}

	@Override
	public List<CeoShopVO> selectShopByCategory(Map<String, String> map) {
		return ceoShopDao.selectShopByCategory(map);
	}

	@Override
	public int countShopByCategory(Map<String, String> map) {
		return ceoShopDao.countShopByCategory(map);
	}
}







