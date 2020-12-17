<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>가성비몰</title>

<!-- Font awesome -->
<link href="/resources/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="/resources/css/jquery.smartmenus.bootstrap.css"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.simpleLens.css">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="/resources/css/slick.css">
<!-- Theme color -->
<link id="switcher" href="/resources/css/theme-color/default-theme.css"
	rel="stylesheet">
<!-- Top Slider CSS -->
<link href="/resources/css/sequence-theme.modern-slide-in.css"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/custom.css" rel="stylesheet">

<!-- Google Font -->
<link href="/resources/fonts/myfont.css" rel='stylesheet'
	type='text/css'>
	
<script src="/resources/ckeditor/ckeditor.js"></script>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<style>
</style>
</head>

<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>
			<label for="text">1차 세분화 상품 종류<span>*</span></label>
	<select style="display:block;"id="first_option" name="first_option">
   									 <option value="men">Men</option>
   									 <option value="women">Women</option>
   									 <option value="shoes">Shoes</option>
  									 <option value="bag">Bag</option>
 								 </select>
	<section class="login_form" id="aa-myaccount">
			<div class="container">
				<div class="aa-myaccount-area">
					<div class="col-md-6">
						<div class="aa-myaccount-register">
							<h4>상품등록</h4>
								<form role="form" method="post" class="aa-login-form" enctype="multipart/form-data">
								<label for="text">1차 세분화 상품 종류<span>*</span></label>
  									<input type="text" id="firstClassification" name="firstClassification" required="required" placeholder="1차 세분화 상품 종류">
								
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

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources//js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="/resources/js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="/resources/js/jquery.smartmenus.bootstrap.js"></script>
	<!-- To Slider JS -->
	<script src="/resources/js/sequence.js"></script>
	<script src="/resources/js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="/resources/js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="/resources/js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="/resources/js/nouislider.js"></script>
	<!-- Custom js -->
	<script src="/resources/js/custom.js"></script>

</body>
</html>
