package com.yasikyeo.app.categori.model;

import java.util.List;

public interface CategoriService {

	public List<CategoriVO> selectByShopNo(int shopNo);
}
