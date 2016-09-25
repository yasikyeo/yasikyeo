package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

public interface CeoShopService {
	public int insertCeoShop(CeoShopVO ceoShopVo,String ceoId);
	public int selectCeoNo(String ceoId);
	public int selectShop(int ceoNo);
	public CeoShopVO selectCeoShop(int ceoNo);
	public int insertCeoProduct(CeoProductVO ceoProductVo,int ceoNo);
	public int selectShopNo(int ceoNo);
	public List<CeoShopVO> selectShopByCategory(Map<String, String> map);
	public int countShopByCategory(Map<String, String> map);
}









