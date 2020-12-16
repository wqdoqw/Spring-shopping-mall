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


	<!-- Start header section -->
	<header id="aa-header">
		<!-- start header top  -->
		<div class="aa-header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-top-area">
							<!-- start header top left -->
							<div class="aa-header-top-left">

								<!-- start cellphone -->
								<div class="cellphone hidden-xs">
									<p>
										<span class="fa fa-phone"></span>070-3322-3212
									</p>
								</div>
								<!-- / cellphone -->
							</div>
							<!-- / header top left -->
							<div class="aa-header-top-right">
								<ul class="aa-head-top-nav-right">
									<li><a href="/member/account">My Account</a></li>
									<c:if test="${member.verify != 9}">
										<li class="hidden-xs"><a href="wishlist.html">Wishlist</a></li>
										<li class="hidden-xs"><a href="cart.html">My Cart</a></li>
										<li class="hidden-xs"><a href="checkout.html">Checkout</a></li>
									</c:if>
									<c:if test="${member == null}">
										<li class="hidden-xs"><a href="/member/signin">Login</a></li>
										<li class="hidden-xs"><a href="/member/signup">Register</a></li>
									</c:if>
									<c:if test="${member != null}">
										<c:if test="${member.verify == 9}">
											<li class="hidden-xs"><a href="/admin/index">관리자 화면</a></li>
										</c:if>
										<li class="hidden-xs"><a href="">${member.username}님환영합니다.</a></li>
										<li class="hidden-xs"><a href="/member/signout">로그아웃</a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / header top  -->

		<!-- start header bottom  -->
		<div class="aa-header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aa-header-bottom-area">
							<!-- logo  -->
							<div class="aa-logo">
								<!-- Text based logo -->
								<a href="/">
									<p>
										가성비<strong>몰</strong> <span>최고의 가성비를 보장합니다</span>
									</p>
								</a>
								<!-- img based logo -->
								<!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
							</div>
							<!-- / logo  -->
							<!-- cart box -->
							<div class="aa-cartbox">
								<a class="aa-cart-link" href="#"> <span
									class="fa fa-shopping-basket"></span> <span
									class="aa-cart-title">SHOPPING CART</span> <span
									class="aa-cart-notify">2</span>
								</a>
								<div class="aa-cartbox-summary">
									<ul>
										<li><a class="aa-cartbox-img" href="#"><img
												src="img/woman-small-2.jpg" alt="img"></a>
											<div class="aa-cartbox-info">
												<h4>
													<a href="#">Product Name</a>
												</h4>
												<p>1 x $250</p>
											</div> <a class="aa-remove-product" href="#"><span
												class="fa fa-times"></span></a></li>
										<li><a class="aa-cartbox-img" href="#"><img
												src="img/woman-small-1.jpg" alt="img"></a>
											<div class="aa-cartbox-info">
												<h4>
													<a href="#">Product Name</a>
												</h4>
												<p>1 x $250</p>
											</div> <a class="aa-remove-product" href="#"><span
												class="fa fa-times"></span></a></li>
										<li><span class="aa-cartbox-total-title"> Total </span> <span
											class="aa-cartbox-total-price"> $500 </span></li>
									</ul>
									<a class="aa-cartbox-checkout aa-primary-btn"
										href="checkout.html">Checkout</a>
								</div>
							</div>
							<!-- / cart box -->
							<!-- search box -->
							<div class="aa-search-box">
								<form action="">
									<input type="text" name="" id=""
										placeholder="상품을 검색하세요">
									<button type="submit">
										<span class="fa fa-search"></span>
									</button>
								</form>
							</div>
							<!-- / search box -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / header bottom  -->
	</header>
	<!-- / header section -->
	<!-- menu -->
	<section id="menu">
		<div class="container">
			<div class="menu-area">
				<!-- Navbar -->
				<div class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<!-- Left nav -->
						<ul class="nav navbar-nav">
							<li><a href="/">Home</a></li>
							<li><a href="#">Men <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Casual</a></li>
									<li><a href="#">Sports</a></li>
									<li><a href="#">Formal</a></li>
									<li><a href="#">Standard</a></li>
									<li><a href="#">T-Shirts</a></li>
									<li><a href="#">Shirts</a></li>
									<li><a href="#">Jeans</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Sleep Wear</a></li>
											<li><a href="#">Sandals</a></li>
											<li><a href="#">Loafers</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#">Women <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Kurta & Kurti</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">Casual</a></li>
									<li><a href="#">Sports</a></li>
									<li><a href="#">Formal</a></li>
									<li><a href="#">Sarees</a></li>
									<li><a href="#">Shoes</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Sleep Wear</a></li>
											<li><a href="#">Sandals</a></li>
											<li><a href="#">Loafers</a></li>
											<li><a href="#">And more.. <span class="caret"></span></a>
												<ul class="dropdown-menu">
													<li><a href="#">Rings</a></li>
													<li><a href="#">Earrings</a></li>
													<li><a href="#">Jewellery Sets</a></li>
													<li><a href="#">Lockets</a></li>
													<li class="disabled"><a class="disabled" href="#">Disabled
															item</a></li>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">Polo T-Shirts</a></li>
													<li><a href="#">SKirts</a></li>
													<li><a href="#">Jackets</a></li>
													<li><a href="#">Tops</a></li>
													<li><a href="#">Make Up</a></li>
													<li><a href="#">Hair Care</a></li>
													<li><a href="#">Perfumes</a></li>
													<li><a href="#">Skin Care</a></li>
													<li><a href="#">Hand Bags</a></li>
													<li><a href="#">Single Bags</a></li>
													<li><a href="#">Travel Bags</a></li>
													<li><a href="#">Wallets & Belts</a></li>
													<li><a href="#">Sunglases</a></li>
													<li><a href="#">Nail</a></li>
												</ul></li>
										</ul></li>
								</ul></li>
							<li><a href="contact.html">Shoes</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li><a href="contact.html">About Us</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
	</section>
	<!-- / menu -->


</body>
</html>