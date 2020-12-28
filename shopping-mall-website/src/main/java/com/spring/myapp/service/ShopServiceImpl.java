package com.spring.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyVO;
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

	@Override
	public void registerReply(GoodsReplyVO reply) throws Exception {
		dao.registerReply(reply);
	}

	@Override
	public List<GoodsReplyListVO> replyList(String goodsName) throws Exception {
		return dao.replyList(goodsName);
	}

	@Override
	public void deleteReply(String replyNumber) throws Exception {
		dao.deleteReply(replyNumber);
	}

	@Override
	public String idCheck(String replyNumber) throws Exception {
		return dao.idCheck(replyNumber);
	}
	
	@Override
	public GoodsReplyVO selectReplyByNumber(String replyNumber) throws Exception {
		return dao.selectReplyByNumber(replyNumber);
	}
	
	@Override
	public void replyModify(GoodsReplyVO vo) throws Exception {
		dao.replyModify(vo);
	}
}