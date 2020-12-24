package com.spring.myapp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyVO;
import com.spring.myapp.domain.GoodsVO;

@Repository
public class ShopDAOImpl implements ShopDAO {

	@Inject
	private SqlSession sql;

	// 매퍼
	private static String namespace = "shopMapper";

	@Override
	public List<GoodsVO> goodsList(String firstClassification) throws Exception {
		return sql.selectList(namespace + ".goodsViewList", firstClassification);
	}

	@Override
	public GoodsVO goodsView(String goodsName) throws Exception {
		return sql.selectOne(namespace + ".goodsViewOne", goodsName);
	}

	@Override
	public void registerReply(GoodsReplyVO reply) throws Exception {
		sql.insert(namespace + ".registerReply", reply);
	}

	@Override
	public List<GoodsReplyListVO> replyList(String goodsName) throws Exception {
		return sql.selectList(namespace + ".replyList", goodsName);
	}
}