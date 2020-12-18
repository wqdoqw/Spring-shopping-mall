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


		<section class="login_form" id="aa-myaccount">
			<div class="container align-self-center">
						<div class="aa-myaccount-area">
								<div class="col-md-6">
									<div class="aa-myaccount-login">
										<h4>로그인</h4>
										<form role="form" method="post" class="aa-login-form">
											<label for="email">Email address<span>*</span></label> <input
												type="text" id="email" name="email" required="required"
												placeholder="Email"> <label for="password">Password<span>*</span></label>
											<input type="password" id="password" name="password"
												required="required" placeholder="Password">
											<button type="submit" class="aa-browse-btn">Login</button>
											<label class="rememberme" for="rememberme"><input
												type="checkbox" id="rememberme"> Remember me </label>
											<p class="aa-lost-password">
												<a href="#">Lost your password?</a>
											</p>
											<p class="aa-lost-password">
												<a href="/member/signup">회원가입</a>
											</p>
										</form>
										<c:if test="${msg == false}">
										<script>
											alert("이메일과 비밀번호를 확인해주세요");
										</script>
										</c:if>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer class="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>


	</div>

</body>
</html>
