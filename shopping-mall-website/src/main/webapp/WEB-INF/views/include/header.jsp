<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>가성비몰</title>

</head>
<body>

    <ul class="ul-top-nav">
        	<li class="left-head-nav"><a style="text-decoration: none;" class="left-div"><span class="fa fa-phone"></span>
                070-3322-3212</a></li>

        <div class="right-head-nav right-last-element">
            	<li><a class="right-div-visible" href="/member/account">나의계정</a></li>
        	<c:if test="${member.verify != 9}">
            	<li><a class="right-div-visible" href="#about">장바구니</a></li>
            </c:if>
            <c:if test="${member == null}">
           		<li><a class="right-div-visible" href="/member/signin">로그인</a></li>
           		<li><a class="right-div-visible" href="/member/signup">회원가입</a></li>
           	</c:if>
           	<c:if test="${member != null}">
           		<c:if test="${member.verify == 9}">
           			<li><a class="right-div-visible" href="/admin/index">관리자 화면</a></li>
           		</c:if>
           		<li><a class="right-div" href="">${member.username}님환영합니다.</a></li>
           		<li><a class="right-div-visible" href="/member/signout">로그아웃</a></li>
           	</c:if>
        </div>
    </ul>
    <div class="logo-div">
        <div class="logo-div-div"> <a href="/" style="text-decoration: none; ">
                <p class="logo-div-p">가성비<strong class="logo-div-p-strong">몰</strong> <span
                        class="logo-div-p-subtitle">최고의
                        가성비를 보장합니다</span>
                </p>
            </a>
        </div>
        <form class="search-form">
            <input type="text" placeholder="상품을 검색하세요~" style="width:300px;">
            <button type="submit" style="margin-right:50px;">
                <span class="fa fa-search"></span>
            </button>
        </form>
    </div>


    <div class="topnav" id="myTopnav">
        <a href="#home">Men</a>
        <a href="#news">Women</a>
        <a href="#contact">Shoes</a>
        <a href="#about">Bag</a>
        <a href="#home">Contact</a>
        <a href="#home">About Us</a>

        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    
	  <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
</body>
</html>