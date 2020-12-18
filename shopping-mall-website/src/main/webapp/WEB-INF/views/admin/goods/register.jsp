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
	
	<section class="login_form" id="aa-myaccount">
			<div class="container">
				<div class="aa-myaccount-area">
					<div class="col-md-6">
						<div class="aa-myaccount-register">
							<h4>상품등록</h4>
								<form role="form" method="post" class="aa-login-form" enctype="multipart/form-data">
								<label for="text">1차 세분화 상품 종류<span>*</span></label>
								<select class="select" style="display:block; margin-bottom:15px;"id="firstClassification" name="firstClassification">
   									 <option value="men">Men</option>
   									 <option value="women">Women</option>
   									 <option value="shoes">Shoes</option>
  									 <option value="bag">Bag</option>
 								 </select>
 								 	<label for="secondClassification">2차 세분화 상품 종류<span>*</span></label>
									<input type="text" id="secondClassification" name="secondClassification" required="required" placeholder="2차 세분화 상품 종류">
									<label for="goodsCode">상품코드<span>*</span></label> 
									<input type="text"	id="goodsCode" name="goodsCode" required="required" placeholder="상품코드">
									<label for="goodsName">상품이름<span>*</span></label>
									<input type="text" id="goodsName" name="goodsName" required="required" placeholder="상품이름">
									<label for="brand">브랜드<span></span></label>
									<input type="text" id="brand" name="brand" required="required" placeholder="브랜드">
									<label for="goodsPrice">상품가격<span>*</span></label>
									<input type="text" id="goodsPrice" name="goodsPrice" required="required" placeholder="상품가격">
									<label for="goodsStock">상품재고<span>*</span></label>
									<input type="text" id="goodsStock" name="goodsStock" required="required" placeholder="상품재고">
									<label for="goodsDescription" style="display:block;">상품소개<span>*</span></label>
									<textarea class="form-control" rows="5" cols="50" id="goodsDescription" name="goodsDescription"  style="display:block;"></textarea>
								<div class="inputArea">
								<label for="goodsImage">이미지</label> <input type="file" id="goodsImage" name="file" />
									<div class="select_img" id ="image_preview">
									<img src= "" />
									</div>
		
									<%=request.getRealPath("/")%>
								</div>
									<button type="submit" class="aa-browse-btn">상품추가</button>
								</form>		
						
						</div>
					</div>
				</div>
			</div>
		</section>

	<footer class="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
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
