<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>test</title>
<script src="/resources/js/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
            var output = '<c:out value = "${output}"/>';
            debugger;
            if(output == "Success_DB_Connection"){
                  $("#result").text("디비 연결 성공");
            }else if(output == "Fail_DB_Connection"){
                  $("#result").text("디비 연결 실패");
            }
      });
</script>
</head>
<body>
      <p id="result"> 테스트 결과갑 출력 </p>
</body>
</html>


