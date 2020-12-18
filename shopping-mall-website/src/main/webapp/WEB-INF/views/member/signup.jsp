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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>

	<script>
		function execPostCode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 도로명 조합형 주소 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}
					// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
					if (fullRoadAddr !== '') {
						fullRoadAddr += extraRoadAddr;
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					console.log(data.zonecode);
					console.log(fullRoadAddr);

					$("[name=zipcode]").val(data.zonecode);
					$("[name=address1]").val(fullRoadAddr);

					/* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
					document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
				}
			}).open();
		}
	</script>
	<div id="root">
		<header id="header">
			<div id="header_box">
				<%@ include file="../include/header.jsp"%>
			</div>
		</header>


		<section class="login_form" id="aa-myaccount">
			<div class="container">
				<div class="aa-myaccount-area">
					<div class="col-md-6">
						<div class="aa-myaccount-register">
							<h4>회원가입</h4>
							<form role="form" method="post" class="aa-login-form">
								<label for="email">이메일<span>*</span></label> <input type="text"
									id="email" name="email" required="required" placeholder="Email">
								<label for="password">패스워드<span>*</span></label> <input
									type="password" id="password" name="password"
									required="required" placeholder="Password"> <label
									for="email">닉네임<span>*</span></label> <input type="text"
									id="username" name="username" required="required"
									placeholder="username"> <label for="phone">연락처<span>*</span></label>
								<input type="text" id="phone" name="phone" required="required"
									placeholder="phone number">
								<div style="display: inline; margin-left: 50px;">
									<label for="zipcode" style="display: block;">우편번호<span>*</span></label>
									<input type="text" id="zipcode"
										style="width: 40%; margin-top: 10px;" name="zipcode"
										required="required" placeholder="zipcode">
								</div>
								<button type="button" class="btn btn-default"
									style="display: inline;" onclick="execPostCode();">
									<i class="fa fa-search"></i> 우편번호 찾기
								</button>
								<label for="address1" style="display: block;">주소1<span>*</span></label>
								<input type="text" id="address1" name="address1"
									required="required" placeholder="address1"> <label
									for="address2">주소2<span>*</span></label> <input type="text"
									id="address2" name="address2" required="required"
									placeholder="address2">
								<button type="submit" class="aa-browse-btn">회원가입</button>
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
