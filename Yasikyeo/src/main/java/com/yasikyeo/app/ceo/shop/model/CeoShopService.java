package com.yasikyeo.app.ceo.shop.model;

import java.util.List;

public interface CeoShopService {
	public int insertCeoShop(CeoShopVO ceoShopVo,String ceoId);
	public int selectCeoNo(String ceoId);
	public int selectShop(int ceoNo);
}









