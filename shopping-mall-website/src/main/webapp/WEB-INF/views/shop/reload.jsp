<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>가성비몰</title>

<!-- font awesome 추가하기 -->
<link rel="stylesheet" href="../css/font-awesome.min.css">
<!-- 부트스트랩 CSS 추가하기 -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- 커스텀 CSS 추가하기 -->
<link rel="stylesheet" href="../css/custom.css">
<!-- Popper 자바스크립트 추가하기 -->
<script src="../js/popper.min.js"></script>
<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="../js/jquery-3.5.1.min.js"></script>
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="../js/bootstrap.min.js"></script>
<script>
	function frameclose() {
		parent.close()
		window.close()
		self.close()
	}
	function popupSubmit() {

		window.opener.name = "parentPage"; // 부모창의 이름 설정
		document.popForm.target = "parentPage"; // 타켓을 부모창으로 설정
		document.popForm.action = "/target/parentPage2.do"; //부모창에 호출될 url 
		document.popForm.submit();
		self.close();
	}
</script>

</head>
<body>
	<script>
		$(document).ready(function() {
			opener.location.reload();
			parent.close()
			window.close()
			self.close()
		});
	</script>

</body>
</html>
