package com.spring.myapp.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.myapp.domain.CartListVO;
import com.spring.myapp.domain.CartVO;
import com.spring.myapp.domain.GoodsReplyListVO;
import com.spring.myapp.domain.GoodsReplyRatingVO;
import com.spring.myapp.domain.GoodsReplyVO;
import com.spring.myapp.domain.GoodsVO;
import com.spring.myapp.domain.MemberVO;
import com.spring.myapp.service.ShopService;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;

@Controller
@RequestMapping("/shop/*")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Inject
	ShopService service;

	// 카테고리별 상품 리스트
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(@RequestParam("c") String firstClassification, Model model) throws Exception {
		logger.info("get list");

		System.out.println("classification>>" + firstClassification);

		List<GoodsReplyRatingVO> list = service.goodsReplyList(firstClassification);
		System.out.println("list>>" + list.get(0));

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

		// reply number 생성
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < 8; i++) {
			if (rnd.nextBoolean()) {
				buf.append((char) ((int) (rnd.nextInt(26)) + 97));
			} else {
				buf.append((rnd.nextInt(10)));
			}
		}

		reply.setReplyNumber(buf.toString());
		System.out.println(reply);
		service.registerReply(reply);

		return "redirect:/shop/view?n=" + reply.getGoodsName();
	}

	// 댓글 삭제
	@RequestMapping(value = "/view/delete", method = RequestMethod.POST)
	public String postReplyDelete(@RequestParam("s") String replyNumber, HttpSession session) throws Exception {
		logger.info("post view delete");
		GoodsReplyVO reply = service.selectReplyByNumber(replyNumber);

		System.out.println("reply>>" + reply);

		service.deleteReply(reply.getReplyNumber());

		return "redirect:/shop/view?n=" + reply.getGoodsName();
	}

	// 댓글 삭제 리다이렉트
	@RequestMapping(value = "/view/goback", method = RequestMethod.POST)
	public String postGoBack(@RequestParam("n") String goodsName, Model model) throws Exception {
		logger.info("post go back");

		return "redirect:/shop/view?n=" + goodsName;
	}

	// 댓글 수정
	@RequestMapping(value = "/view/modify", method = RequestMethod.POST)
	public String postUpdateReply(@RequestParam("n") String replyNumber, Model model, GoodsReplyVO replyVO)
			throws Exception {
		logger.info("post update reply");

		GoodsReplyVO reply = service.selectReplyByNumber(replyNumber);

		System.out.println("modify 요기>>" + reply);
		System.out.println("reply data VO>>" + replyVO);
//		service.replyModify(replyNumber);

		return "redirect:/shop/view?n=" + reply.getGoodsName();
	}

	// 댓글 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getUpdateReply(@RequestParam("n") String replyNumber) throws Exception {
		logger.info("get update reply");

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String updateReply(@RequestParam("n") String replyNumber, GoodsReplyVO reply, HttpServletResponse response)
			throws Exception {
		logger.info("post update reply");

		System.out.println("modify replyvo>>>" + reply);
		reply.setReplyNumber(replyNumber);

		service.replyModify(reply);

		PrintWriter out = response.getWriter();
		out.println("<script>parent.close()window.close()self.close()</script> ");

		return "redirect:/shop/reload";
	}

	// 수정용 페이지 리로드
	@RequestMapping(value = "/reload", method = RequestMethod.GET)
	public void getReload() throws Exception {
		logger.info("get reload");
	}

	// 카트 추가
	@ResponseBody
	@RequestMapping(value = "/view/addCart", method = RequestMethod.POST)
	public int addCart(CartVO cart, HttpSession session) throws Exception {
		logger.info("post cart");

		int result = 0;

		System.out.println("cartVO>>" + cart);
		MemberVO member = (MemberVO) session.getAttribute("member");
		System.out.println("memberVO>>" + member);
		if (member != null) {
			cart.setUserid(member.getEmail());
			service.addCart(cart);
			result = 1;
		}
		System.out.println("after cartVO>>" + cart);

		return result;
	}

	// 카트 목록
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public void getCartList(HttpSession session, Model model) throws Exception {
		logger.info("get cart list");

		MemberVO member = (MemberVO) session.getAttribute("member");
		String userId = member.getEmail();

		List<CartListVO> cartList = service.cartList(userId);

		model.addAttribute("cartList", cartList);
	}

	// 카트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO cart)
			throws Exception {
		logger.info("delete cart");

		MemberVO member = (MemberVO) session.getAttribute("member");
		String userid = member.getEmail();

		int result = 0;
		int cartNumber = 0;
		if (chArr.isEmpty()) {
			return result;
		}
		
		if (member != null) {
			cart.setUserid(userid);

			for (String i : chArr) {
				cartNumber = Integer.parseInt(i);
				cart.setCartNumber(cartNumber);
				service.deleteCart(cart);
			}
			result = 1;
		}
		return result;
	}
}