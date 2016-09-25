package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

public interface CeoShopDAO {
	public int insertCeoShop(CeoShopVO ceoShopVo);
	public int selectCeoNo(String ceoId);
	public int selectShop(int ceoNo);
	public CeoShopVO selectCeoShop(int ceoNo);
	public int insertCeoProduct(CeoProductVO ceoProductVo);
	public int selectShopNo(int ceoNo);
	public List<CeoShopVO> selectShopByCategory(Map<String, String> map);
	public int countShopByCategory(Map<String, String> map);
	
}


	








