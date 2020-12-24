package com.spring.myapp.persistence;

import java.util.List;

import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyVO;
import com.spring.myapp.domain.GoodsVO;

public interface ShopDAO {

	// 상품 1차분류로 조회
	public List<GoodsVO> goodsList(String firstClassification) throws Exception;

	// 상품 상세조회
	public GoodsVO goodsView(String goodsName) throws Exception;

	// 상품소감
	public void registerReply(GoodsReplyVO reply) throws Exception;

	// 상품소감 리스트
	public List<GoodsReplyListVO> replyList(String goodsName) throws Exception;
}