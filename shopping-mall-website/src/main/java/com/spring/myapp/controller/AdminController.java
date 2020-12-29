package com.spring.myapp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.myapp.domain.GoodsVO;
import com.spring.myapp.domain.GoodsViewVO;
import com.spring.myapp.domain.MemberVO;
import com.spring.myapp.service.AdminService;
import com.spring.myapp.utils.UploadFile;


@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	AdminService adminService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 관리자화면
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getIndex() throws Exception {
		logger.info("get index");
	}

	// 상품 등록
	@RequestMapping(value = "/goods/register", method = RequestMethod.GET)
	public void getGoodsRegister(Model model) throws Exception {
		logger.info("get goods register");

//		List<CategoryVO> category = null;  // CatagoryVO 형태의 List형 변수 category 선언
//		category = adminService.category();  // DB에 저장된 카테고리를 가져와서 category에 저장
//		model.addAttribute("category", JSONArray.fromObject(category));  // 변수 category를 제이슨(json)타입으로 변환하여 category 세션에 부여
	}

	// 상품 등록
	@RequestMapping(value = "/goods/register", method = RequestMethod.POST)
	public String postGoodsRegister(GoodsVO vo, MultipartFile file) throws Exception {

		String imgUploadPath = uploadPath + File.separator + "imgUpload"; // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		String ymdPath = UploadFile.calcPath(imgUploadPath); // 위의 폴더를 기준으로 연월일 폴더를 생성
		String fileName = null; // 기본 경로와 별개로 작성되는 경로 + 파일이름

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)

			fileName = UploadFile.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

			// 상품 이미지를 원본 파일 경로 + 파일명 저장
			vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			// 상품 썸네일을 썸네일 파일 경로 + 썸네일 파일명 저장
			vo.setGoodsThumbnailImage(
					File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

		} else { // 첨부된 파일이 없으면
			fileName = File.separator + "img" + File.separator + "none.png";
			// 미리 준비된 none.png파일을 대신 출력함

			vo.setGoodsImage(fileName);
			vo.setGoodsThumbnailImage(fileName);
		}

		if (vo.getBrand() != null && vo.getBrand() != "") {
		}

		adminService.register(vo);

		return "redirect:/admin/index";
	}

	// 상품 목록
	@RequestMapping(value = "/goods/list", method = RequestMethod.GET)
	public void getGoodsList(Model model) throws Exception {
		logger.info("get goods list");
		List<GoodsVO> list = adminService.goodslist();

		model.addAttribute("list", list);
	}

	// 상품 조회
	@RequestMapping(value = "/goods/view", method = RequestMethod.GET)
	public void getGoodsView(@RequestParam("n") String goodsCode, Model model) throws Exception {
		logger.info("get goods view");

		GoodsVO goods = adminService.goodsView(goodsCode);
		System.out.println(goods);
		model.addAttribute("goods", goods);
	}

	// 상품 수정
	@RequestMapping(value = "/goods/modify", method = RequestMethod.GET)
	public void getGoodsModify(@RequestParam("n") String goodsCode, Model model) throws Exception {
		logger.info("get goods modify");

		GoodsVO goods = adminService.goodsView(goodsCode);
		System.out.println(goods);
		model.addAttribute("goods", goods);
	}

	// 상품 수정
	@RequestMapping(value = "/goods/modify", method = RequestMethod.POST)
	public String postGoodsModify(@RequestParam("n") String goodsCode, GoodsVO vo, Model model, MultipartFile file) throws Exception {
		logger.info("post goods modify");

		System.out.println("code>>" + goodsCode);
		vo.setGoodsCode(goodsCode);
		GoodsVO goods = adminService.goodsView(goodsCode);
		
		model.addAttribute("goods", goods);

		
		// 새로운 파일이 등록되었는지 확인
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일을 삭제
			new File(uploadPath + goods.getGoodsImage()).delete();
			new File(uploadPath + goods.getGoodsThumbnailImage()).delete();
			
			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFile.calcPath(imgUploadPath);
			String fileName = UploadFile.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			
			vo.setGoodsImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			vo.setGoodsThumbnailImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			
		} else {  // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			vo.setGoodsImage(goods.getGoodsImage());
			vo.setGoodsThumbnailImage(goods.getGoodsThumbnailImage());
			
		}
		System.out.println("modify VO 전에 출력>>" + vo);
		adminService.goodsModify(vo);
		System.out.println("modify VO 출력>>" + vo);

		return "redirect:/admin/goods/list";
	}
	
	// 상품 삭제
	@RequestMapping(value = "/goods/delete", method = RequestMethod.POST)
	public String postGoodsDelete(@RequestParam("n") String goodsCode) throws Exception {
		logger.info("post goods delete");
		System.out.println(goodsCode);
		adminService.goodsDelete(goodsCode);

		return "redirect:/admin/goods/list";
	}

}
