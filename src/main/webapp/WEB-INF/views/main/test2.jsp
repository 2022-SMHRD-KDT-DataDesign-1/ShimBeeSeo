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
<style>
.que ul {
	padding-left: 0;
}

.que ul li {
	list-style: none;
}
</style>
<script>
	$(document).ready(function() {
		//$(".page").
		pagingSetting();
	});

	function pagingSetting() {
		totalQuePage = $(".que").length;
		curPage = $(".curQue").attr("id").substring(totalQuePage);
		$(".page").text(curPage + "/" + totalQuePage);
	}

	function goQuestion() {
		imgWrapClass = $("#imgWrap").attr("class");
		if (imgWrapClass == "on") {
			$("#imgWrap").attr("class", "");
			$("#imgWrap").css("right", "120%");
			$("#queWrap").css("left", "");
		} else {
			return;
		}
	}

	function prevQue() {
		var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
		var prevQue = $(".curQue").prev();//현재 질문의 다음질문 div태그의 id
		$('.prevBtn').css("display", "");
		curQue.attr("class", "que");
		curQue.css("left", "100%");
		prevQue.attr("class", "curQue que");
		prevQue.css("right", "");
		prevBtnShowing();
		nextBtnShowing();
	}
	function nextQue() {
		var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
		var nextQue = $(".curQue").next();//현재 질문의 다음질문 div태그의 id
		$('.prevBtn').css("display", "");
		curQue.attr("class", "que");
		curQue.css("right", "100%");
		nextQue.attr("class", "curQue que");
		nextQue.css("left", "");
		prevBtnShowing()
		nextBtnShowing();
	}
	function prevBtnShowing() {
		curId = $(".curQue").attr("id");
		if (curId == "que1") {//첫번째 질문인경우 이전버튼 숨김처리
			$('.prevBtn').css("display", "none");
		} else {
			$('.prevBtn').css("display", "");
		}
	}
	function nextBtnShowing() {
		curId = $(".curQue").attr("id");
		lastId = $(".que").last().attr("id");//선택한 div태그의 형제div 중 마지막div태그의 id(대신 모든 형제태그가 같은 class 값을 가져야 함)
		if (curId == lastId) {//첫번째 질문인경우 다음버튼 숨김처리
			$('.nextBtn').css("display", "none");
		} else {
			$('.nextBtn').css("display", "");
		}
	}
</script>
<!-- 미리보기 이미지 조정값 -->
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
					<strong style="font-family: 'MaplestoryOTFBold';">질문 있어요</strong>
				</h1>
				<div>
					<div>
						<div class="uploadPhoto">
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
							<div style="margin: 0">
								<form name="inputImg" method="POST">
									<div style="display: flex; width: 100%" class="container">
										<div style="width: 100%; display: block; margin: 0 auto"
											class="col-md-4">
											<form action="" method="get">
												<div
													style="width:100%;height:30rem;padding:9% 6% 17% 3%;overflow:hidden;background-image:url('${contextPath}/resources/img/sk(1).png'); background-repeat : no-repeat; background-size : 100% 100%;">
													<div id="imgWrap" class="on"
														style="width: 85%; height: 390px; position: absolute; overflow: hidden;">
														<div
															style="width: 100%; height: 100%; border: 1px solid #ccc;">
															<img style="width: 100%; height: 100%;" id="foo2" />
														</div>
													</div>
													<div id="queWrap" class=""
														style="width: 100%; height: 22rem; position: relative; overflow: hidden; left: 120%;">
														<div id="que1" class="que"
															style="position: absolute; width: 100%; right: 120%;">
															<ul style="line-height: 30px">
																<li><span>그림에 태양이 묘사되어 있나요?</span><br> <input
																	type="radio" name="gender" value="m">태양이 반만
																	나와있다 <input type="radio" name="gender" value="w">태양이
																	무채색으로 표현되어 있다</li>
																<input type="radio" name="gender" value="e">태양이
																없다
																</li>
																<input type="radio" name="gender" value="j">무난한
																모습의 태양이다
																</li>
																<li><span>이사람의 머리는 큰편인가요?</span><br> <input
																	type="radio" name="headSize" value="big">큰편 <input
																	type="radio" name="headSize" value="middle">중간
																	<input type="radio" name="headSize" value="small">작음</li>
																<li><span>현관문의 크기와 모양은 어떻게 묘사되었나요?</span><br>
																	<input type="radio" name="feeling" value="happy">과하게
																	큰 현관문 <input type="radio" name="feeling" value="angry">과하게
																	작은 현관문 <input type="radio" name="feeling" value="sad">덧칠되어
																	있는 현관문 또는 잠금장치가 있는 현관문</li>
																<input type="radio" name="feeling" value="sad">현관문이
																없다
																</li>
																<input type="radio" name="feeling" value="sad">집의
																측면에 있는 현관문
																</li>
																<input type="radio" name="feeling" value="sad">특징이
																없는 평범한 현관문
																</li>
															</ul>
														</div>
														<div id="que2" class="que curQue"
															style="position: absolute; width: 100%;">
															<ul style="line-height: 30px">
																<li><span>이사람은 2남자인가요? 여자인가요?</span><br> <input
																	type="radio" name="gender" value="m">남 <input
																	type="radio" name="gender" value="w">여</li>
																<li><span>2이사람의 머리는 큰편인가요?</span><br> <input
																	type="radio" name="headSize" value="big">큰편 <input
																	type="radio" name="headSize" value="middle">중간
																	<input type="radio" name="headSize" value="small">작음</li>
																<li><span>2이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의
																		기분은 어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?</span><br> <input
																	type="radio" name="feeling" value="happy">기분좋음
																	<input type="radio" name="feeling" value="angry">화남
																	<input type="radio" name="feeling" value="sad">슬픔</li>
															</ul>
														</div>
														<div id="que3" class="que"
															style="position: absolute; width: 100%; left: 120%;">
															<ul style="line-height: 30px">
																<li><span>3이사람은 남자인가요? 여자인가요?</span><br> <input
																	type="radio" name="gender" value="m">남 <input
																	type="radio" name="gender" value="w">여</li>
																<li><span>3이사람의 머리는 큰편인가요?</span><br> <input
																	type="radio" name="headSize" value="big">큰편 <input
																	type="radio" name="headSize" value="middle">중간
																	<input type="radio" name="headSize" value="small">작음</li>
																<li><span>3이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의
																		기분은 어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?</span><br> <input
																	type="radio" name="feeling" value="happy">기분좋음
																	<input type="radio" name="feeling" value="angry">화남
																	<input type="radio" name="feeling" value="sad">슬픔</li>
															</ul>
														</div>
													</div>
													<div class="pagingWraper">
														<button type="button" class="prevBtn" onclick="prevQue();">이전</button>
														<span class="page"></span>
														<button type="button" class="nextBtn" onclick="nextQue();">다음</button>
													</div>
												</div>

												<!-- get : 도메인쪽에 내가 입력한 것이 붙어서 서버쪽으로 가는 것 -->
												<!-- post: 정보은닉이 되어 서버쪽으로 가는 것 -->


												<!-- checkbox는 name이 같아야함 -->
												<!-- 여러개 선택할 수 있음 -->
											</form>
											<!-- </div> -->
										</div>
									</div>
									<br> <input class="btn btn-info"
										style="background-color: #FE5D37; border-color: #FE5D37; color: white"
										id="picSend" type="button" value="다음단계로"
										onclick="goQuestion();" />
									<!-- <input class="btn btn-info"
								style="background-color: #FE5D37; border-color: #FE5D37; color: white"
								id="picSend" type="button" value="다음단계로" onclick="location.href='checkSucces.do'"> -->
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
				url : "http://192.168.56.1:9000/photo/" + id,
				data : data,
				processData : false,
				contentType : false,
				cache : false,
				timeout : 600000,
				success : function(items) {

					if (res = !null) {
						console.log("파일 업로드 성공");
						// res 출력은 true만 나옴.. 어케 받아오지..?
						console.log(items);
						// 값 받아와서 히든태그에 집어 넣기!!
						// null값 체크해서 페이지 이동 막아줘야 함
					} else {
						console.log("파일 업로드 실패");
					}
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