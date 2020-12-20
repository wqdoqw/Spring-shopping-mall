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
	<script>
	</script>
</head>

<body>
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp"%>
		</div>
	</header>
	<section class="register_form">
        <h2 style="font-weight: bold; margin-top: 40px;">상품수정</h2>
                    <form role="form" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="n" value="${goods.goodsCode}"/>
                        <label for="text">1차 세분화 상품 종류<span>*</span></label>
                        <select class="select form-control" id="selectBox" style="display:block; width:150px;"id="firstClassification" name="firstClassification">
                            <option value="men" <c:if test="${goods.firstClassification eq 'men'}">selected</c:if>>Men</option>
                            <option value="women" <c:if test="${goods.firstClassification eq 'women'}">selected</c:if>>Women</option>
                            <option value="shoes" <c:if test="${goods.firstClassification eq 'shoes'}">selected</c:if>>Shoes</option>
                            <option value="bag" <c:if test="${goods.firstClassification eq 'bag'}">selected</c:if>>Bag</option>
                        </select>
                    <label for="secondClassification">2차 세분화 상품 종류<span>*</span></label>
                    <input type="text" id="secondClassification" class="form-control" name="secondClassification" value="${goods.secondClassification}" placeholder="2차 세분화 상품 종류" required="required">
                    <label for="goodsName">상품이름<span>*</span></label>
                    <input type="text" id="goodsName" class="form-control" name="goodsName" placeholder="상품이름" value="${goods.goodsName}" required="required">
                    <label for="brand">브랜드<span></span></label>
                    <input type="text" id="brand" class="form-control" name="brand" placeholder="브랜드" value="${goods.brand}" required="required">
                    <label for="goodsPrice">상품가격<span>*</span></label>
                    <input type="text" id="goodsPrice" class="form-control" name="goodsPrice"  placeholder="상품가격" value="${goods.goodsPrice}" required="required">
                    <label for="goodsStock">상품재고<span>*</span></label>
                    <input type="text" id="goodsStock" class="form-control" name="goodsStock" placeholder="상품재고" value="${goods.goodsStock}" required="required">
                    <label for="goodsDescription" style="display:block;">상품소개<span>*</span></label>
                    <textarea class="form-control" rows="5" cols="50" id="goodsDescription" name="goodsDescription" required="required">${goods.secondClassification}</textarea>
                 <div class="inputArea">
                    <label for="goodsImage">이미지</label> 
                    <div class="custom-file">
                        <input type="file" id="goodsImage" name="file" class="custom-file-input" />
                        <label class="custom-file-label custom_file" for="customFile">Choose file</label>
                    </div>
                    <div class="select_img img_upload" id ="image_preview" style="margin-top:50px; margin-bottom:20px;">
                    	<img src="${goods.goodsImage}" class="img_upload" />
                    </div>
                    <label for="saveDirectory">저장위치:</label> 
                    	<%=request.getRealPath("/")%>
                </div>
                <div class="inputArea" style="margin-bottom:250px; margin-top:20px;">
 					<button type="submit" id="update_Btn" class="btn btn-primary">완료</button>
 					<button type="button" id="back_Btn" class="btn btn-warning" >취소</button> 
				<script>
				
 					$("#back_Btn").click(function(){
  					//window.history.back();
  					window.location.href = "/admin/goods/view?n=" + "${goods.goodsCode}";
 					});   
				</script>
				</div>  
				
        </form>
    </section>

    <script>
        // 파일이름 표시
        $(".custom-file-input").on("change", function() {
          var fileName = $(this).val().split("\\").pop();
          $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
        
        // 파일 미리보기
    	$("#goodsImage").change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img").attr("src",
									data.target.result).width(500);
							console.log(data.target.result);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
    </script>

		<footer class="foot_design">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>


</body>
</html>
