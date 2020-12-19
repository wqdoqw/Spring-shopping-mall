package com.spring.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.myapp.domain.CategoryVO;
import com.spring.myapp.domain.GoodsVO;
import com.spring.myapp.domain.GoodsViewVO;
import com.spring.myapp.persistence.AdminDAO;
 
@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;

	// 카테고리
	@Override
	public List<CategoryVO> category() throws Exception {
		return dao.category();
	}

	// 상품등록
	@Override
	public void register(GoodsVO vo) throws Exception {
		dao.register(vo);		
	}

	// 상품목록
	@Override
	public List<GoodsVO> goodslist() throws Exception {
		return dao.goodslist();
	}

	// 상품조회  + 카테고리 조인
	@Override
	public GoodsVO goodsView(String goodsCode) throws Exception {
		return dao.goodsView(goodsCode);
	}

	// 상품 수정
	@Override
	public void goodsModify(GoodsVO vo) throws Exception {
		dao.goodsModify(vo);
	}

	// 상품 삭제
	@Override
	public void goodsDelete(int gdsNum) throws Exception {
		dao.goodsDelete(gdsNum);
	}
}