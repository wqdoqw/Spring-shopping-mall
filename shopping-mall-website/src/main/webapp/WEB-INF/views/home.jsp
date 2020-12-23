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

<style>
.carousel {
	width: 1200px;
	height: 640px;
	margin: 0 auto;
}

.slider {
	/* margin-left:100px;
margin-right:100px; */
	
}

.four-menu {
	margin: 200px auto;
}

@media screen and (max-width: 850px) {
	.four-menu{
		display:none;
	}
	.carousel{
		width:auto;
		height:auto;
	}
	
	.foot_design{
		margin-top:0px;
	}
	
}
</style>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="include/header.jsp"%>
		</div>
	</header>


	<section id="container">
		<div id="container_box">

			<div>
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100"
								src="/resources/img/index/index_img1.jpg" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="/resources/img/index/index_img2.jpg" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="/resources/img/index/index_img3.jpg" alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>

		</div>
		<div class="four-menu" >
			<div class="row" style="padding-left: 370px; margin:0 auto;">
				<div class="col-md-4 col-xs-12">
					<a href="/shop/list?c=men"><img class="d-block w-100"
						src="/resources/img/index/men.jpg" alt="Third slide"></a>
				</div>
				<div class="col-md-4 col-xs-12">
					<a href="/shop/list?c=women"><img class="d-block w-100"
						src="/resources/img/index/women.jpg" alt="Third slide"></a>
					<div class="logo-div-div">
						<p class="logo-div-p">
							가성비<strong class="logo-div-p-strong">몰</strong> <span
								class="logo-div-p-subtitle">최고의 가성비를 보장합니다</span>
						</p>
					</div>
				</div>
			</div>
			<div class="row" style="padding-top: 50px; padding-left: 370px; margin:0 auto;">
				<div class="col-md-4 col-xs-12">
					<img class="d-block w-100" src="/resources/img/index/shoes.jpg"
						alt="Third slide">
				</div>
				<div class="col-md-4 col-xs-12">
					<img class="d-block w-100" src="/resources/img/index/bag.jpg"
						alt="Third slide">
				</div>
			</div>
		</div>
	</section>
	<br>
	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="include/footer.jsp"%>
		</div>
	</footer>
</body>
</html>
