<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<%@ include file="include/header.jsp" %>
		</div>
	</header>

	
	<section id="container">
		<div id="container_box">
		
			<section id="content">
				본문 영역
			</section>
			
			
		</div>
	</section>

	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="include/footer.jsp" %>
		</div>		
	</footer>



</body>
</html>
