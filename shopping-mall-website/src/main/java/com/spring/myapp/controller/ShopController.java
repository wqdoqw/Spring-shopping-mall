package com.spring.myapp.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.myapp.domain.GoodsVO;
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
	}

	
}