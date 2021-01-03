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
<style>
.box {
	width: 1320px;
	margin: 0 auto;
	/* border: solid 1px blue; */
}

#content_box {
	padding-top: 50px;
}

#content_box h3 {
	float: left;
	margin-left: 610px;
}

#content_box p {
	float: right;
	margin-right: 20px;
}

.items {
	width: 232px;
	/* border: solid 1px blue; */
	margin: 30px 0 0 25px;
	float: left;
}

.items li {
	font-family: "돋움";
	color: #666666;
}

.items .a {
	font-weight: bold;
	color: black;
	margin-top: 20px;
	padding-right: 45px;
	/* font-size: 14px; */
}

.items .b {
	font-weight: bold;
	color: black;
	margin-top: 5px;
	font-size: 14px;
	padding-right: 20px;
}

.items .b span {
	color: #a26f59;
}

.items .c {
	font-size: 12px;
	margin-top: 20px;
	/* padding-bottom:20px; */
}

.items .d {
	font-size: 12px;
	margin-top: 25px;
}

.items .d span {
	color: #a26f59;
}

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

.final_sum {
	margin-bottom: 200px;
	text-align: center;
	font-weight: bold;
}

.final_sum h3 {
	font-weight: bold;
	margin-bottom: 30px;
}

.sum {
	margin-bottom: 20px;
}

@media screen and (max-width: 600px) {
	.items {
		margin-right: 450px;
		margin-left: 80px;
		/* margin-bottom:30px; */
	}
	.category {
		display: none;
	}
	#content_box h3 {
		margin-left: 120px;
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


	<section id="content">
		<c:if test="${fn:length(cartList) == 0}">
			<h3 class="goods-title">전체 카트 상품</h3>
			<p style="text-align: center; font-weight: bold; font-size: 16px;">현재
				카트에 상품이 없습니다.</p>
		</c:if>
		<c:if test="${fn:length(cartList) > 0}">
			<div class="box">
				<h3 class="goods-title">전체 카트 상품</h3>
				<div class="allCheck">
					<input type="checkbox" name="allCheck" id="allCheck" /><label
						for="allCheck">모두 선택</label>
					<script>
						$("#allCheck").click(function() {
							var chk = $("#allCheck").prop("checked");
							if (chk) {
								$(".chBox").prop("checked", true);
							} else {
								$(".chBox").prop("checked", false);
							}
						});
					</script>
				</div>
				<div class="delBtn">
					<button type="button" class="selectDelete_btn btn btn-default"
						style="background-color: #ff6766; color: white;">선택 삭제</button>

					<script>
						$(".selectDelete_btn")
								.click(
										function() {
											var confirm_val = confirm("정말 삭제하시겠습니까?");

											if (confirm_val) {
												var checkArr = new Array();

												$(
														"input[class='chBox']:checked")
														.each(
																function() {
																	checkArr
																			.push($(
																					this)
																					.attr(
																							"data-cartNum"));
																});

												$
														.ajax({
															url : "/shop/deleteCart",
															type : "post",
															data : {
																chbox : checkArr
															},
															success : function(
																	result) {
																if (result == 1) {
																	location.href = "/shop/cartList";
																} else {
																	alert("삭제 실패");
																}
															}
														});
											}
										});
					</script>
				</div>

				<div class="clear"></div>
				<c:set var="sum" value="0" />
				<c:forEach items="${cartList}" var="cartList">
					<ul class="items">
						<div class="checkBox">
							<input type="checkbox" name="chBox" class="chBox"
								data-cartNum="${cartList.cartNumber}" />
							<script>
								$(".chBox").click(function() {
									$("#allCheck").prop("checked", false);
								});
							</script>
						</div>
						<li><img src="${cartList.goodsThumbnailImage}"></li>
						<li class="a">상품명: <a
							href="/shop/view?n=${cartList.goodsName}">${cartList.goodsName}</a></li>
						<li class="b">가격: ${cartList.goodsPrice}<span> 할인율:
								${cartList.goodsDiscountRate}%</span></li>
						<li class="b">구입 수량 : ${cartList.cartStock}</li>
						<li class="b">최종 가격 : <fmt:formatNumber pattern="###,###,###"
								value="${cartList.goodsPrice * cartList.cartStock}" /></li>
						<c:set var="string1" value="${cartList.goodsDescription}" />
						<c:set var="string2" value="..." />
						<li class="c">&quot; <c:choose>
								<c:when test="${fn:length(string1) gt 40}">
									<c:out value="${fn:substring(string1, 0, 39)}${string2}">
									</c:out>
								</c:when>
								<c:otherwise>
									<c:out value="${string1}">
									</c:out>
								</c:otherwise>
							</c:choose>&quot;
							<div class="delete">
								<button type="button"
									class="delete_${cartList.cartNumber}_btn btn btn-default"
									data-cartNumber="${cartList.cartNumber}"
									style="margin-top: 20px; background-color: #ff6766; color: white;">삭제</button>

								<script>
									$(".delete_${cartList.cartNumber}_btn")
											.click(
													function() {
														var confirm_val = confirm("정말 삭제하시겠습니까?");

														if (confirm_val) {
															var checkArr = new Array();

															checkArr
																	.push($(
																			this)
																			.attr(
																					"data-cartNumber"));

															$
																	.ajax({
																		url : "/shop/deleteCart",
																		type : "post",
																		data : {
																			chbox : checkArr
																		},
																		success : function(
																				result) {
																			if (result == 1) {
																				location.href = "/shop/cartList";
																			} else {
																				alert("삭제 실패");
																			}
																		}
																	});
														}
													});
								</script>
							</div>
						</li>

					</ul>
					<c:set var="sum"
						value="${sum + (cartList.goodsPrice * cartList.cartStock)}" />
				</c:forEach>
			</div>

			<div class="clear" style="margin-bottom: 100px;"></div>

			<div class="final_sum" style="margin-bottom: 200px;">
				<h3>총 상품 가격</h3>
				<div class="sum">
					총 합계 :
					<fmt:formatNumber pattern="###,###,###" value="${sum}" />
					원
				</div>
				<a href="/shop/orderCart" class="btn
					btn-default"
					style="background-color: #ff6766; color: white;">주문 하기</a>
			</div>
		</c:if>

	</section>


	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>

</body>
</html>
