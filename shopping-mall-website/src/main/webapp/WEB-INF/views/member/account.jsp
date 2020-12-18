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

	<div id="root">
		<header id="header">
			<div id="header_box">
				<%@ include file="../include/header.jsp"%>
			</div>
		</header>
<section>
		<h2><a href="/admin/index">관리자 화면으로 가기</a></h2>
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


	</div>



</body>
</html>
