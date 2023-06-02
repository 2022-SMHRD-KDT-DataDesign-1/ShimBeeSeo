<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 	
 	<meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${contextPath}/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">

</head>
<body>

   <div class="container-xxl bg-white p-0">
 
		<jsp:include page="../common/header.jsp"></jsp:include>

		<!-- 상자생성하고 사진넣어보기 -->
		<section style="font-family: 'MaplestoryOTFBold';" id="projects"
			class="about-section text-center">
			<div style="margin-top: 0;" class="testView">
				<h1>
					<strong  style="font-family: 'MaplestoryOTFBold';">그림 업로드</strong>
				</h1>
				<div>
					<div style="display: block;">
						<div class="uploadPhoto">
							<div style="margin: 0 !important;">
								<h3>
									<strong  style="font-family: 'NEXON Lv1 Gothic OTF'">집</strong>
								</h3>
								<form  method="POST" enctype="multipart/form-data" id="form_img">
								<!-- <form action="http://192.168.56.1:9000/photo" method="POST" enctype="multipart/form-data"> -->
								<!-- <form action="imgUpload.do" method="POST" enctype="multipart/form-data"> -->
									<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
									<div style="display: block; margin : 0 auto" class="col-md-4">
										<div style="margin-bottom: 1rem;" class="custom-file">
											<input type="file" name="file" id="imageInput" accept="image/*">
											<!-- <input previewnum="foo2" type="file" class="custom-file-input" id="imgInp2" name="imgInp2"> -->
											<!-- <label class="custom-file-label" for="imgInp2">Choose
												file</label> -->
										</div>
										<br>
										<button type="button" onclick="uploadFunction();"class="form-control btn btn-primary">파일업로드</button>
										<!-- <input id="btn_img_send" class="btn btn-info" style="background-color: #FE5D37; border-color: #FE5D37; color: white"
											type="submit" value="이미지업로드"> -->
									</div>
								</form>
								<div>
									<img class="img-bg" style="background-size: 100% 100%;" src="${contextPath}/resources/img/sk(1).png" alt="">
									<img style="width: 30rem; height: 30rem;" id="foo2" />
								</div>	

								<form name="inputImg" method="POST">
									<div style="display: flex;" class="container">

									</div>
									<br> <input class="btn btn-info"
										style="background-color: #FE5D37; border-color: #FE5D37; color: white"
										id="picSend" type="submit" value="다음단계로">
									<div id="resultView">
										<h3 id="resultTxt"></h3>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
	<script type="text/javascript">
	
		/* event.preventDefault(); */
		
		let url = 'http://192.168.56.1:9000/photo'; 
		
	
/*  		const response = fetch('http://192.168.56.1:9000/photo', {
		     method: 'POST',
		     body: formData
		}); */
 		
		const formData = new FormData();
 		
/* 		$("#btn_img_send").cilck(function(){
 		    console.log("getDataAjax");
			formData.append('imgFile', imgFile.current);
			
 		    // 통신방법 Case 1 . AJjax
 		    // - 장점 : jQuery를 통해 쉽게 구현이 가능
 		    // - 단점 : jQuery가 없다면 코드가 복잡하다
 		    
 		     $.ajax({

 			   url : url,
			   type : "POST",
			   data : formData,
				   success : function(res){
					   console.log("통신 성공!", res);
				            
			        },
			        error : ()=>{
			            console.log("통신 실패");
			        }
    
 		    });
			
		}); */
		
		function uploadFunction() {
			// 임의 test, id값 쿼리스트링으로 보내기
			var id = 'samsam'
			var data = new FormData(form_img);
			console.log("파일 업로드 요청");

			$.ajax({
				type: "POST",
				enctype: 'multipart/form-data',
				url: "http://192.168.56.1:9000/photo/"+id,
				data: data,
				async: false,
				processData: false,
				contentType: false,
				cache: false,
				timeout: 600000,

			success: function(res) {

					if (res =! null) {
						console.log("파일 업로드 성공");
						// res 출력은 true만 나옴.. 어케 받아오지..?
						console.log(res);
					}
					else {
						console.log("파일 업로드 실패");
					}
				},
				error: function(e) {
						console.log("파일 업로드 에러");
				}
			});
		}
		
		
	</script>
</body>
</html>