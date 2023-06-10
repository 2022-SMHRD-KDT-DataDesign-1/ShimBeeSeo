<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="${contextPath}/resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${contextPath}/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
<style type="text/css">
.flex-container {
	display: flex;
}

.wrapper {
	text-align: center;
	flex-grow: 1;
}

.wrapper .image-box {
	width: 200px;
	height: 200px;
	object-fit: cover;
	display: block;
	margin: 20px auto;
}

.wrapper .upload-btn {
	border: 1px solid #ddd;
	padding: 6px 12px;
	display: inline-block;
	cursor: pointer;
}

.wrapper .upload-btn input[type=file] {
	display: none;
}
</style>
</head>
<body>

	<div class="container-xxl bg-white p-0">

		<jsp:include page="../common/header.jsp"></jsp:include>

		<!-- 상자생성하고 사진넣어보기 -->
		<section style="font-family: 'MaplestoryOTFBold';" id="projects"
			class="about-section text-center">
			<div style="margin-top: 0;" class="testView">
				<h1>
					<strong style="font-family: 'MaplestoryOTFBold';">그림 업로드</strong>
				</h1>
				<div>
					<div style="display: block;">
						<div class="uploadPhoto">
							<h3>
								<strong style="font-family: 'NEXON Lv1 Gothic OTF'">사람</strong>
							</h3>
							<%-- <form method="POST" enctype="multipart/form-data" id="form_img">
								<!-- <form action="http://192.168.56.1:9000/photo" method="POST" enctype="multipart/form-data"> -->
								<!-- <form action="imgUpload.do" method="POST" enctype="multipart/form-data"> -->
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<div style="display: block; margin: 0 auto" class="col-md-4">
									<div style="margin-bottom: 1rem;" class="custom-file">
										<input type="file" name="file" id="imageInput"
											accept="image/*">
										<!-- <input previewnum="foo2" type="file" class="custom-file-input" id="imgInp2" name="imgInp2"> -->
										<!-- <label class="custom-file-label" for="imgInp2">Choose
									file</label> -->
									</div>
									<br>
									<button type="button" onclick="uploadFunction();"
										class="form-control btn btn-primary">파일업로드</button>
									<!-- <input id="btn_img_send" class="btn btn-info" style="background-color: #FE5D37; border-color: #FE5D37; color: white"
								type="submit" value="이미지업로드"> -->
								</div>
							</form> --%>


							<!--미리보기 테스트 -->
							<form method="POST" enctype="multipart/form-data" id="form_img">
								<div class="flex-container">
									<div class="wrapper">
										<h2>FileReader</h2>
										<img
											src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg"
											class="image-box" /> <label for="file" class="upload-btn">
											<input id="file" name="file" type="file" accept="image/*" /> <span>Upload
												Image</span>
										</label>
									</div>

		<!-- 	============================= 이미지 하나만 사용	======================================
									<div class="wrapper">
										<h2>URL API</h2>
										<img
											src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg"
											class="image-box" /> <label for="file2" class="upload-btn">
											<input id="file2" type="file" accept="image/*" /> <span>Upload
												Image</span>
										</label>
									</div> -->
								</div>
								<!-- 미리보기 이후 파일 업로드하기 -->
								<button type="button" onclick="uploadFunction();"
									class="form-control btn btn-primary" style="width: 150px">파일업로드</button>
								<!--미리보기 테스트 끝 -->


							</form>
							<div style="margin: 0 !important;">
								<form name="inputImg" method="POST">
									<div style="display: flex;" class="container">
										<div style="display: block; margin: 0 auto" class="col-md-4">

											<div
												style="width: 30rem; height: 30rem; background-image:url('${contextPath}/resources/img/sk(1).png'); background-repeat : no-repeat; background-size : 100% 100%; padding: 2rem 1.5rem;">
												<div style="width: 26rem; height: 25rem;">
													<img style="width: 100%; height: 100%;" id="foo2" />
												</div>
											</div>

										</div>
									</div>
									<br> <input class="btn btn-info"
										style="background-color: #FE5D37; border-color: #FE5D37; color: white"
										id="beforeSend" type="submit" value="이전페이지로"> <input
										class="btn btn-info"
										style="background-color: #FE5D37; border-color: #FE5D37; color: white"
										id="nextSend" type="button" value="다음단계로"
										onclick="location.href='test2.do'">

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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
	<script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

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

/* =========================이미지 모델에게 확인 요청 ================================= */
		function uploadFunction() {
			// 임의 test, id값 쿼리스트링으로 보내기
			var id = 'samsam'
			var data = new FormData(form_img);
			console.log("파일 업로드 요청");

			/* async : false -> 비동기 동기로 변경, 다만 값 받아오기 전에 페이지 이동해 버리면 값 못받고 넘어감!!
								주의하자! */
			$.ajax({
				type : "POST",
				enctype : 'multipart/form-data',
				url : "http://211.105.164.246:9000/h_photo/",
				data : data,
				processData : false,
				contentType : false,
				cache : false,
				timeout : 600000,
				success : function(items) {

					if (res = !null) {
						console.log("파일 업로드 성공");
						// res 출력은 true만 나옴.. 어케 받아오지..?
						console.log(items['message']);
						// 값 받아와서 히든태그에 집어 넣기!!
						// null값 체크해서 페이지 이동 막아줘야 함
						
						
						// ChatGPT에 객체 탐지 결과 불러와서 질문 집어넣기
						var prompt = "";
						var cnt = 1;
						var inputText = items['message'];
						var keyword = inputText.split(",");
						prompt += "HTP검사중에 집그림 검사를 시작할거야 대상은 8세 미만의 아동이야\n";
						for(var i = 0 ; i < keyword.length-1; i++){
							if(keword[i]== 'house'){								
							prompt+=cnt+".집"+이 존재함 \n";
							}
							if(keword[i]== 'door'){								
							prompt+=cnt+".문"+이 존재함 \n";
							}
							if(keword[i]== 'window'){								
							prompt+=cnt+".창문"+이 존재함 \n";
							}
							if(keword[i]== 'wall'){								
							prompt+=cnt+".벽"+이 존재함 \n";
							}
							if(keword[i]== 'chimney'){								
							prompt+=cnt+".굴뚝"+이 존재함 \n";
							}
							if(keword[i]== 'roof'){								
							prompt+=cnt+".지붕"+이 존재함 \n";
							}
							if(keword[i]== 'sun'){								
							prompt+=cnt+".태양"+이 존재함 \n";
							}else{
								prompt+="";
								}
							
							cnt++;
						};
						prompt += "위 검사를 토대로 검사 결과를 해석해줘 결과는 자녀의 부모님에게 설명하는 것 처럼 설명해줘 \n 추가로 위 검사 결과를 바탕으로 아이의 양육방식에 대하여 부모님의 관점으로 10가지 말해줘";
						console.log(prompt);

							$.ajax({
								url : "http://localhost:5000/chatbot",
								Type : "get",
								data : {"message" : prompt},
								dataType : "json",
								contentType: 'application/json; charset=utf-8',
								success : function (chatbot_response){
									console.log(chatbot_response);
								},
								error : function (){
									console.log("flask에서 아무고토 못받음");
								}
							});
						
						
					} else {
						console.log("파일 업로드 실패");
					};
				},
				error : function(e) {
					console.log("파일 업로드 에러");
				}
			});
		}
	</script>
	<!-- 이미지 미리보기 처리 -->
	<script type="text/javascript">
	const fileDOM = document.querySelector('#file');
	const previews = document.querySelectorAll('.image-box');

	fileDOM.addEventListener('change', () => {
	  const reader = new FileReader();
	  reader.onload = ({ target }) => {
	    previews[0].src = target.result;
	  };
	  reader.readAsDataURL(fileDOM.files[0]);
	});

	/* 만약 이미지 두개 처리 할 거라면 */
	const fileDOM2 = document.querySelector('#file2');

	fileDOM2.addEventListener('change', () => {
	  const imageSrc = URL.createObjectURL(fileDOM2.files[0]);
	  previews[1].src = imageSrc;
	});
	
	</script>
</body>
</html>