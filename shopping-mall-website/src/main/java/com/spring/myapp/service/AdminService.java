package com.spring.myapp.service;

import java.util.List;

import com.spring.myapp.domain.GoodsReplyVO;
import com.spring.myapp.domain.GoodsVO;

public interface AdminService {

	// 상품등록
	public void register(GoodsVO vo) throws Exception;

	// 상품목록
	public List<GoodsVO> goodslist() throws Exception;

	// 상품조회
	public GoodsVO goodsView(String goodsCode) throws Exception;

	// 상품 수정
	public void goodsModify(GoodsVO vo) throws Exception;

	// 상품 삭제
	public void goodsDelete(String goodsCode) throws Exception;

	// 댓글목록
	public List<GoodsReplyVO> goodsReplylist() throws Exception;

}