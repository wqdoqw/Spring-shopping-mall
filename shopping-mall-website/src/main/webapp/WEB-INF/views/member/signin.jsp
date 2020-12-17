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
