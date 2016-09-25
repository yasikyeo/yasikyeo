package com.yasikyeo.app.categori.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CategoriServiceimpl implements CategoriService{

	@Autowired
	private CategoriDAO categoriDAO;

	@Override
	public List<CategoriVO> selectByShopNo(int shopNo) {
		return categoriDAO.selectByShopNo(shopNo);
	}
}
