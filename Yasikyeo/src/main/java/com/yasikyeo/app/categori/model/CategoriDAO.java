package com.yasikyeo.app.categori.model;

import java.util.List;

public interface CategoriDAO {

	public List<CategoriVO> selectByShopNo(int shopNo);
}
