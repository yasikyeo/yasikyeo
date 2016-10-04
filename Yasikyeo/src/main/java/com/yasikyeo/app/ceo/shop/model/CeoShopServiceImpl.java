package com.yasikyeo.app.ceo.shop.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.categori.model.CategoriVO;
import com.yasikyeo.app.common.SearchVO2;

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
	public List<CeoShopVO> selectShopByCategory(SearchVO2 searchVo2) {
		return ceoShopDao.selectShopByCategory(searchVo2);
	}

	@Override
	public int countShopByCategory(SearchVO2 searchVo2) {
		return ceoShopDao.countShopByCategory(searchVo2);
	}

	@Override
	public CeoShopVO selectByShopNo(int shopNo) {
		return ceoShopDao.selectByShopNo(shopNo);
	}

	@Override
	public List<CeoProductVO> productSelectByShopNo(int shopNo) {
		return ceoShopDao.productSelectByShopNo(shopNo);
	}

	@Override
	public int updateCeoShop(CeoShopVO ceoShopVo) {
		return ceoShopDao.updateCeoShop(ceoShopVo);
	}

	@Override
	public int countShop(int shopNo) {
		return ceoShopDao.countShop(shopNo);
	}

	@Override
	public CeoProductVO selectProduct(int productNo) {
		return ceoShopDao.selectProduct(productNo);
	}

	@Override
	public int updateProduct(CeoProductVO ceoProductVo) {
		return ceoShopDao.updateProduct(ceoProductVo);
	}

	@Override
	public int deleteProduct(int productNo) {
		return ceoShopDao.deleteProduct(productNo);
	}

	@Override
	public int insertCategory(CategoriVO ceoCategoryVo) {
		return ceoShopDao.insertCategory(ceoCategoryVo);
	}

	@Override
	public List<CategoriVO> selectCategory(int shopNo) {
		return ceoShopDao.selectCategory(shopNo);
	}

	@Override
	public int updateProductCategory(List<CeoProductVO> pdList,int categoriNo) {
		int cnt=0;
		
		for(CeoProductVO vo : pdList){
			//체크한 상품만 등록
			int productNo=vo.getProductNo();
			if(productNo!=0){
				CeoProductVO ceoProductVo = new CeoProductVO();
				ceoProductVo.setProductNo(productNo);
				ceoProductVo.setCategoriNo(categoriNo);
				
				cnt+=ceoShopDao.updateProductCategory(ceoProductVo);
			}
		}
		
		return cnt;
	}

	@Override
	public List<CeoProductVO> productSelectByCategoryNo(int categoriNo) {
		return ceoShopDao.productSelectByCategoryNo(categoriNo);
	}

	@Override
	public int multiDelete(List<CeoProductVO> pdList) {
		int cnt=0;
		
		for(CeoProductVO vo : pdList){
			//체크한 상품만 등록
			int productNo=vo.getProductNo();
			if(productNo!=0){
				cnt+=ceoShopDao.deleteProduct(productNo);
			}
		}
		
		return cnt;
	}

	@Override
	public List<CeoOrderDetVO> selectOrderDetView(int shopNo) {
		return ceoShopDao.selectOrderDetView(shopNo);
	}

	@Override
	public int countOrder(int shopNo) {
		return ceoShopDao.countOrder(shopNo);
	}
}







