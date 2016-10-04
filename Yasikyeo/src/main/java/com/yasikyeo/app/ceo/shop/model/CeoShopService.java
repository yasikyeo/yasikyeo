package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

import com.yasikyeo.app.categori.model.CategoriVO;
import com.yasikyeo.app.common.SearchVO2;

public interface CeoShopService {
	public int insertCeoShop(CeoShopVO ceoShopVo,String ceoId);
	public int selectCeoNo(String ceoId);
	public int selectShop(int ceoNo);
	public CeoShopVO selectCeoShop(int ceoNo);
	public int insertCeoProduct(CeoProductVO ceoProductVo,int ceoNo);
	public int selectShopNo(int ceoNo);
	public List<CeoShopVO> selectShopByCategory(SearchVO2 searchVo2);
	public int countShopByCategory(SearchVO2 searchVo2);
	public CeoShopVO selectByShopNo(int shopNo);
	public List<CeoProductVO> productSelectByShopNo(int shopNo);
	public int updateCeoShop(CeoShopVO ceoShopVo);
	public int countShop(int shopNo);
	public CeoProductVO selectProduct(int productNo);
	public int updateProduct(CeoProductVO ceoProductVo);
	public int deleteProduct(int productNo);
	public int insertCategory(CategoriVO ceoCategoryVo);
	public List<CategoriVO> selectCategory(int shopNo);
	public int updateProductCategory(List<CeoProductVO> pdList,int categoriNo);
	public List<CeoProductVO> productSelectByCategoryNo(int categoriNo);
	public int multiDelete(List<CeoProductVO> pdList);
	public List<CeoOrderDetVO> selectOrderDetView(int shopNo);
	public int countOrder(int shopNo);
}









