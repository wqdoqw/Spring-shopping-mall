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
	margin-bottom: 400px;
}

/* admin list section */
#myInput {
	background-position: 10px 10px;
	background-repeat: no-repeat;
	/*   width: 100%; */
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
	/* 	margin-left: 200px; */
}

.search-div {
	margin-left: 200px;
	margin-top: 50px;
}

.search-div select {
	height: 50px;
}

.search-div input {
	width: 40%;
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

	<div class="search-div">

		<select class="select form-control"
			style="display: inline; width: 150px;" id="selectBox">
			<option value="1">상품번호</option>
			<option value="2">상품이름</option>
			<option value="3">주문자 이름</option>
		</select> <input type="text" id="myInput" onkeyup="searchFunction()"
			placeholder="Search for names.." title="Type in a name">
	</div>

	<div class="table-view">
		<table class="table table-striped" id="myTable">
			<thead class="thead-dark">
				<tr>
					<th style="width: 8%;">주문번호</th>
					<th style="width: 10%;">상품번호</th>
					<th style="width: 10%;">상품이름</th>
					<th style="width: 10%;">이름</th>
					<th style="width: 12%;">전화번호</th>
					<th style="width: 30%;">주소</th>
					<th style="width: 10%;">주문상태</th>
					<th style="width: 10%;">주문상태 변경</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.orderId}</td>
						<td>${list.goodsCode}</td>
						<td><a href="/admin/goods/view?n=${list.goodsCode}">${list.goodsName}</a>
						</td>
						<td>${list.orderRecipient}</td>
						<td>${list.phone}</td>
						<td>${list.zipcode}
							<br>
							${list.address1}
							<br>
							${list.address2}
						</td>
						<td>	
							<c:if test="${list.orderStatus == 1}">
								주문완료
							</c:if>
							<c:if test="${list.orderStatus == 2}">
								배송중
							</c:if>
						</td>
						<td><a href="/admin/goods/orderList" class="send_btn${list.orderId} btn1 btn btn-default" style="background-color: #ff6766; color:white;">보내기</a> </td>
					</tr>
	<script>
	  $(".send_btn${list.orderId}").click(function(){
	   var orderId = "${list.orderId}";
	     console.log(orderId);
	   var data = {
		 orderId : orderId,
	     orderStatus : 2
	     };
	   
	   $.ajax({
	    url : "/admin/goods/orderList",
	    type : "post",
	    data : data,
	    success : function(result){
	    /* 	if(result == 1){
	     		alert("카트 담기 성공");
	     		$(".numBox").val("1");
	    	}else{
	    		alert("회원만 사용할 수 있습니다");
	     		$(".numBox").val("1");
	    	} */
	    	alert("성공");
	    },
	    error : function(){
	     alert("카트 담기 실패");
	    }
	   });
	  });
	</script>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<script>
		function searchFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");

			var target = document.getElementById("selectBox");
			var targetIndex = target.options[target.selectedIndex].value;

			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[targetIndex];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>

	<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>



</body>
</html>
