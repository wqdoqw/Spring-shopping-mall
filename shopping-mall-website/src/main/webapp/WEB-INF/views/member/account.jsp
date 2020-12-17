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
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/nouislider.css">
<!-- Theme color -->
<link id="switcher" href="/resources/css/theme-color/default-theme.css"
	rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<!-- Top Slider CSS -->
<link href="/resources/css/sequence-theme.modern-slide-in.css"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/custom.css" rel="stylesheet">
<!-- Google Font -->
<link href="/resources/fonts/myfont.css" rel='stylesheet'
	type='text/css'>
</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>


	<section>
		<h1><a href="/admin/index">관리자 화면으로 가기</a></h1>
		<h2>유저네임</h2>
		<p>${member.username}</p>
		<h2>유저 이메일</h2>
		<p>${member.email}</p>
		<h2>유저 주소번호</h2>
		<p>${member.zipcode}</p>
			<h2>유저 주소1</h2>
		<p>${member.address1}</p>
		<h2>유저 주소2</h2>
		<p>${member.address2}</p>
		<h2>생성된 날짜</h2>
			<p>${member.regedate}</p>
		<h2>유저 권한</h2>
		<c:if test="${member.verify == 9}">
			<p>관리자 입니다</p>
		</c:if>
		<c:if test="${member.verify == 0}">
			<p>일반 유저 입니다</p>
		</c:if>
	</section>

	<footer class="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>




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
