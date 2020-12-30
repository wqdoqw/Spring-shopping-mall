package com.spring.myapp.persistence;

import java.util.List;

import com.spring.myapp.domain.CartListVO;
import com.spring.myapp.domain.CartVO;
import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyRatingVO;
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

	// 상품소감(댓글) 삭제
	public void deleteReply(String replyNumber) throws Exception;

	// 아이디 체크
	public String idCheck(String replyNumber) throws Exception;
	
	// reply number로 select
	public GoodsReplyVO selectReplyByNumber(String replyNumber) throws Exception;
	
	// 댓글 수정
	public void replyModify(GoodsReplyVO vo) throws Exception;
	
	// 카트 담기
	public void addCart(CartVO cart) throws Exception;
	
	// 전체 상품 좋아요 댓글 갯수 리스트
	public List<GoodsReplyRatingVO> goodsReplyList(String firstClassification) throws Exception;
	
	// 카트 리스트
	public List<CartListVO> cartList(String userid) throws Exception;
	
	// 카트 삭제 
	public void deleteCart(CartVO cart) throws Exception;
}