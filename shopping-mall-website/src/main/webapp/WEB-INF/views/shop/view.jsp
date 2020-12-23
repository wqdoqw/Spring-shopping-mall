<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>쇼핑상세보기</title>
<link rel="stylesheet" href=/resources/css/goods-view.css>
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
<style>
.product_view {
	margin-left: 300px;
	margin-top: 150px;
	margin-bottom: 150px;
}

.responsive_view {
	display: none;
}

@media screen and (max-width: 600px) {
	.product_view {
		display: none;
	}
	.responsive_view {
		display: block;
		margin-left:70px;
		margin-top:30px;
	}
}
</style>
<body>


	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>
	<div class="responsive_view">
		<h2 style="font-weight:bold; margin-bottom:20px;">${view.goodsName}</h2>
		<img src="${view.goodsImage}" alt="" style="width:300px; height:auto;"> 
		<label style="display:block; font-weight:bold; font-size:26px; margin-top:10px;">판매가</label> 
		<label class="price" style="font-size:20px;color:red;">${view.goodsPrice} <span>원</span></label> 
		<label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">상품코드</label>
		<label>${view.goodsCode}</label> 
		<label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">제조사/공급사</label> 
		<label>${view.brand}</label>
		<div class="length">
			<input type="number" min="1" value="1"> <a href="#a">증가</a> <a
				href="#a">감소</a>
		</div>
		<label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">사용가능쿠폰</label> 
		<label>0개</label> 
		<label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">옵션선택</label> <label><select>
				<option>기본(+0)</option>
		</select></label> <label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">배송비</label> <label>무료배송</label>
			<label style="display:block; font-weight:bold; font-size:26px;margin-top:10px;">결제금액</label>
		<label style="font-size:20px;color:red;"><b>${view.goodsPrice}</b>원</label>
		<div class="btns" style="margin-bottom:200px;margin-top:40px;">
			<button type="submit" id="update_Btn" class="btn btn-default" style="background-color:grey; color:white;">장바구니</button>
 			<button type="button" id="back_Btn" class="btn btn-default" style="background-color:blue; color:white;" >구매하기</button> 
		</div>
	</div>

	<div class="product_view">
		<h2>${view.goodsName}</h2>
		<table>
			<caption>
				<details class="hide">
					<summary>상품정보</summary>
					판매가, 상품코드, 옵션 및 결제금액 안내
				</details>
			</caption>
			<colgroup>
				<col style="width: 173px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th>판매가</th>
					<td class="price">${view.goodsPrice}</td>
				</tr>
				<tr>
					<th>상품코드</th>
					<td>${view.goodsCode}</td>
				</tr>
				<tr>
					<th>제조사/공급사</th>
					<td>${view.brand}</td>
				</tr>
				<tr>
					<th>구매수량</th>
					<td>
						<div class="length">
							<input type="number" min="1" value="1"> <a href="#a">증가</a>
							<a href="#a">감소</a>
						</div>
					</td>
				</tr>
				<tr>
					<th>사용가능쿠폰</th>
					<td>0개</td>
				</tr>
				<tr>
					<th>옵션선택</th>
					<td><select>
							<option>기본(+0)</option>
					</select></td>
				</tr>
				<tr>
					<th>배송비</th>
					<td>무료배송</td>
				</tr>
				<tr>
					<th>결제금액</th>
					<td class="total"><b>${view.goodsPrice}</b>원</td>
				</tr>
			</tbody>
		</table>
		<div class="img">
			<img src="${view.goodsImage}" alt="">
			<ul>
				<li class="on"><a href="#a"><img src="${view.goodsImage}"
						alt=""></a></li>
				<li><a href="#a"><img src="images/@thoumb.png" alt=""></a></li>
			</ul>
		</div>
		<div class="btns">
			<a href="#a" class="btn1">장바구니</a> <a href="#a" class="btn2">구매하기</a>
		</div>
	</div>
	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

</body>
</html>

