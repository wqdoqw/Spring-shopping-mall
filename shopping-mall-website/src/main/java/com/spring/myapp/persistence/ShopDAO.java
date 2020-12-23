package com.spring.myapp.persistence;

import java.util.List;

import com.spring.myapp.domain.GoodsVO;


public interface ShopDAO {

	// 상품 1차분류로 조회
	public List<GoodsVO> goodsList(String firstClassification) throws Exception;
	
	// 상품 상세조회
	public GoodsVO goodsView(String goodsName) throws Exception;

}