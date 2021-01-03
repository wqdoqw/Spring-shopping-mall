<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<!-- 다음주소 API 추가하기 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

.clear {
	clear: both;
}

.goods-title {
	font-weight: bold;
	margin-bottom: 50px;
	text-align: center;
	margin-top: 50px;
}

.table-view {
	margin-left: 300px;
	margin-right: 300px;
	margin-top: 50px;
	text-align: center;
}

.order-amount-box {
	background: #ffca94;
	margin-left: 300px;
	margin-right: 300px;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-top: 30px;
	text-align: center;
	font-size: 16px;
	font-weight: bold
}

.order_form {
	margin-top: 50px;
	border: 5px solid lightgrey;
	margin-left: 300px;
	margin-right: 300px;
}

.order_form label {
	margin-top: 15px;
	font-weight: bold;
	font-size: 16px;
	margin-left: 100px;
}

.order_form input {
	width: 450px;
	height: 32px;
	margin-left: 100px;
}

.order_form form {
	margin-left: 25%;
	margin-right: 25%;
}

.pay_button {
	margin-top: 20px;
	margin-left: 100px;
	margin-bottom: 50px;
}

.postcode_button {
	display: inline;
	margin-left: 3px;
}

.order_form span {
	color: red;
}

@media screen and (max-width: 1500px) {
	.order_form label {
		margin-left: 10%;
	}
	.order_form input {
		width: 80%;
		margin-left: 10%;
	}
	.order_form {
		margin-left: 10%;
		margin-right: 10%;
	}
	.pay_button {
		margin-left: 10%;
	}
	.order-amount-box {
		margin-left: 10%;
		margin-right: 10%;
	}
	.table-view {
		margin-left: 10%;
		margin-right: 10%;
	}
}

@media screen and (max-width: 880px) {
	.postcode_button {
		margin-top: 10px;
		margin-left: 30px;
	}
}
</style>

</head>
<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>

	<h1>주문번호로 검색</h1>
	   <section class="register_form" style="margin-top:50px;">
        <h2 style="font-weight: bold;"></h2>
        <form role="form" method="post">
            <label for="email" style="margin-top:20px;">이메일<span>*</span></label> 
            <input type="text" id="email" name="email" required="required" placeholder="Email" class="form-control"> 
            <label for="password">비밀번호<span>*</span></label>
            <input type="password" id="password" name="password" required="required" placeholder="Password" class="form-control">
            <button type="submit" class="btn btn-secondary btn-md" style="background-color: #ff6766; margin-top:20px;">Login</button>
            <p style="margin-top: 15px;">
                <a href="#">Lost your password?</a>
            </p>
            <p style="margin-bottom: 300px;">
                <a href="/member/signup">회원가입</a>
            </p>
        </form>

	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

</body>
</html>
