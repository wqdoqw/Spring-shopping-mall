<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
.table-view {
	margin-left: 200px;
	margin-right: 200px;
	margin-top: 50px;
	margin-bottom: 150px;
}
@media screen and (max-width: 1100px) {
.table-view {
	margin-left: 15%;
	margin-right: 15%;
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

	<div class="table-view">
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">썸네일</th>
					<th scope="col">상품번호</th>
					<th scope="col">이름</th>
					<th scope="col">1차 분류</th>
					<th scope="col">2차 분류</th>
					<th scope="col">브랜드</th>
					<th scope="col">가격</th>
					<th scope="col">수량</th>
					<th scope="col">등록날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td><img src="${list.goodsThumbnailImage}"
							style="max-width: 50px;" /></td>
						<td>${list.goodsCode}</td>
						<td><a href="/admin/goods/view?n=${list.goodsCode}">${list.goodsName}</a>
						</td>
						<td>${list.firstClassification}</td>
						<td>${list.secondClassification}</td>
						<td>${list.brand}</td>
						<td><span><fmt:formatNumber value="${list.goodsPrice}"
									pattern="###,###,###" /></span></td>
						<td>${list.goodsStock}</td>
						<td><fmt:formatDate value="${list.goodsAddedTime}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>



</body>
</html>
