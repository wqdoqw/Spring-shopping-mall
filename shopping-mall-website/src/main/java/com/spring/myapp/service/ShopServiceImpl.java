package com.spring.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.myapp.domain.GoodsVO;
import com.spring.myapp.persistence.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {

	@Inject
	private ShopDAO dao;

	@Override
	public List<GoodsVO> goodsList(String firstClassification) throws Exception {
		return dao.goodsList(firstClassification);
	}
	
	@Override
	public GoodsVO goodsView(String goodsName) throws Exception {
		return dao.goodsView(goodsName);
	}
}