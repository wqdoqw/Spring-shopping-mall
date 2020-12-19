<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>가성비몰</title>

    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <!-- 부트스트랩 CSS 추가하기 -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <!-- 커스텀 CSS 추가하기 -->
    <link rel="stylesheet" href="/resources/css/custom.css">
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="/resources/js/popper.min.js"></script>
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="/resources/js/jquery-3.5.1.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="/resources/js/bootstrap.min.js"></script>


</head>

<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>
	
	<section class="register_form goods_view">
        <h2 style="font-weight: bold; margin-top: 40px;">상품조회</h2>
                    <form role="form" method="post" autocomplete="off">
                    <!-- style="display:block; width:150px; -->
                    <label for="text" style="display:block;">1차 세분화 상품 종류<span>*</span></label>
                    <span>${goods.firstClassification}</span>
                    <label for="secondClassification" style="display:block;">2차 세분화 상품 종류<span>*</span></label>
                     <span>${goods.secondClassification}</span>
                    <label for="goodsCode" style="display:block;">상품코드<span>*</span></label> 
 					<span>${goods.goodsCode}</span>
                    <label for="goodsName" style="display:block;">상품이름<span>*</span></label>
 						<span>${goods.goodsName}</span>
                    <label for="brand" style="display:block;">브랜드<span></span></label>
 						<span>${goods.brand}</span>
                    <label for="goodsPrice" style="display:block;">상품가격<span>*</span></label>
 						<span>${goods.goodsPrice}</span>
                    <label for="goodsStock" style="display:block;">상품재고<span>*</span></label>
 						<span>${goods.goodsStock}</span>
                    <label for="goodsDescription" style="display:block;">상품소개<span>*</span></label>
 						<span>${goods.goodsDescription}</span>
                <div style="margin-bottom:70px; margin-top:30px;">
 					<button type="button" id="register_Btn" class="btn btn-warning">수정</button>
 					<button type="button" id="register_Btn" class="btn btn-danger">삭제</button>
				</div> 
			</form>		
    </section>

		<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>

	
		<script>
				$("#goodsImage").change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
				</script>


</body>
</html>