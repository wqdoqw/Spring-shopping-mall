package com.spring.myapp.controller;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyVO;
import com.spring.myapp.domain.GoodsVO;
import com.spring.myapp.domain.MemberVO;
import com.spring.myapp.service.ShopService;

@Controller
@RequestMapping("/shop/*")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Inject
	ShopService service;

	// 카테고리별 상품 리스트
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(@RequestParam("c") String firstClassification, GoodsVO vo, Model model) throws Exception {
		logger.info("get list");

		System.out.println("classification>>" + firstClassification);
//		System.out.println("vo>>" + vo);
		List<GoodsVO> list = null;
		list = service.goodsList(firstClassification);

//		list = list.stream().filter(s -> s.getFirstClassification().equals(firstClassification)).collect(Collectors.toList());
		System.out.println(list.get(0));

		model.addAttribute("list", list);

	}

	// 상품 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("n") String goodsName, Model model) throws Exception {
		logger.info("get view");

		GoodsVO view = service.goodsView(goodsName);
		view.setGoodsName(goodsName);
		model.addAttribute("view", view);
		
		List<GoodsReplyListVO> reply = service.replyList(goodsName);
		model.addAttribute("reply", reply);
	}

	// 상품 조회 - 상품 댓글
	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public String registerReply(GoodsReplyVO reply, HttpSession session) throws Exception {
		logger.info("register reply");

		MemberVO member = (MemberVO) session.getAttribute("member");
		reply.setUserid(member.getEmail());
		
		
		//reply number 생성
		Random rnd =new Random();
		StringBuffer buf =new StringBuffer();
		for(int i=0;i<8;i++){
		    if(rnd.nextBoolean()){
		        buf.append((char)((int)(rnd.nextInt(26))+97));
		    }else{
		        buf.append((rnd.nextInt(10)));
		    }
		}
		
		reply.setReplyNumber(buf.toString());
		System.out.println(reply);
		service.registerReply(reply);

		return "redirect:/shop/view?n=" + reply.getGoodsName();
	}

}