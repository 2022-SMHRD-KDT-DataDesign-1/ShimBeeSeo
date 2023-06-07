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

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
<script>
	$(document).ready(function() {
		//$(".page").
		pagingSetting();
		$("#queWrap").css("display","");
	});

	function pagingSetting() {
		var totalQuePage = $(".que").length;
		var curPageId = $(".curQue").attr("id");
		var curPage = curPageId.substring(curPageId.indexOf("que")+3);
		$(".page").text(curPage + "/" + totalQuePage);
	}

	/* function goQuestion() {
		imgWrapClass = $("#imgWrap").attr("class");
		if (imgWrapClass == "on") {
			$("#imgWrap").attr("class", "");
			$("#imgWrap").css("right", "120%");
			$("#queWrap").css("left", "");
		} else {
			return;
		}
	} */

	function prevQue() {
		var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
		var prevQue = $(".curQue").prev();//현재 질문의 다음질문 div태그의 id
		//$('.prevBtn').css("display", "");
		curQue.attr("class", "que");
		curQue.css("display", "none");
		prevQue.attr("class", "curQue que");
		prevQue.css("display", "");
		prevBtnShowing();
		nextBtnShowing();
		pagingSetting();
	}
	function nextQue() {
		var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
		var nextQue = $(".curQue").next();//현재 질문의 다음질문 div태그의 id
		//$('.prevBtn').css("display", "");//.css("display","")와 같이 빈란으로 속성을 적용하는 경우 이전 상태로 복원하는 것임(이전 상태에 아무것도 하지않은 상태면 css자체에서나 브라우저에서 자체적으로 지정하는 css 기본값으로 적용될 수도있음)
		curQue.attr("class", "que");//요소에 class 속성 값으로 que를 대입한다 = 값이 que인 class 속성을 추가한다.
		curQue.css("display", "none");
		nextQue.attr("class", "curQue que");
		nextQue.css("display", "");
		prevBtnShowing();
		nextBtnShowing();
		pagingSetting();
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
.que{
	width: 100%;
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
		<section style="font-family: 'MaplestoryOTFBold';" id="projects" class="about-section text-center">
			<div style="margin-top: 0;" class="testView">
				<h1><strong style="font-family: 'MaplestoryOTFBold';">집</strong></h1>
				<div>
					<div class="uploadPhoto">
						<form method="POST" enctype="multipart/form-data" id="form_img">
							<div class="flex-container">
								<div class="wrapper">
									<h2 style="font-family: 'GmarketSansMedium'";>FileReader</h2>
									<img src="https://i0.wp.com/adventure.co.kr/wp-content/uploads/2020/09/no-image.jpg" class="image-box" /> 
									<label for="file" class="upload-btn">
									<input id="file" name="file" type="file" accept="image/*" />
									<span>Upload Image</span>
									</label>
								</div>
								<!-- 미리보기 이후 파일 업로드하기 -->
								<button type="button" onclick="uploadFunction();" class="form-control btn btn-primary" style="width: 150px">파일업로드</button>
								<!--미리보기 테스트 끝 -->
							</div>
						</form>
					</div>
				</div>
			</div>
			<div style="margin: 0">
				<div style="display: flex; width: 100%" class="container">
					<div style="width: 100%; display: block; margin: 0 auto" class="col-md-4">
						<form action="" method="get">
							<div style="width:100%; height:auto; min-height:700px; position:relative; overflow:hidden; background-image:url('${contextPath}/resources/img/sk(1).png'); background-repeat : no-repeat; background-size : 100% 100%;">
								<div id="queWrap" class="" style="width: 100%; height: auto;  padding: 25px 40px 90px 18px;">
									<div id="que1" class="que curQue" style="width: 100%;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group" style="margin-top: 10px">
											<strong style="margin-top: 2vw; font-family: 'GmarketSansMedium'; font-size: 20pt; color: black">1.그림의 전체적인 분위기는 어떤가요?</strong> 
											<input type="radio" class="btn-check" name="mood" value="1" id="vbtn-radio1" autocomplete="off"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio1">보통</label>
											<input type="radio" class="btn-check" name="mood" value="2" id="vbtn-radio2" autocomplete="off"> 
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio2">조금 부정적</label>
											<input type="radio" class="btn-check" name="mood" value="3" id="vbtn-radio3" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio3">완전 부정적</label> <br>
											<strong style="margin-top: 2vw; font-family: 'GmarketSansMedium'; font-size: 20pt; color: black">2. 종이의 전체 면적에서 집이 얼마나 차지하나요?</strong>
											<input type="radio" class="btn-check" name="size" value="4" id="vbtn-radio4" autocomplete="off">
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio4">보통(중앙에서 2/3 정도 차지)</label>
											<input type="radio" class="btn-check" name="size" value="5" id="vbtn-radio5" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio5">지나치게 큼</label>
											<input type="radio" class="btn-check" name="size" value="6" id="vbtn-radio6" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio6">지나치게 작음</label>
											<input type="radio" class="btn-check" name="size" value="7" id="vbtn-radio7" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio7">파손 됨(절단된 집)</label>
										</div>
									</div>

											<!-- get : 도메인쪽에 내가 입력한 것이 붙어서 서버쪽으로 가는 것 -->
											<!-- post: 정보은닉이 되어 서버쪽으로 가는 것 -->


											<!-- checkbox는 name이 같아야함 -->
											<!-- 여러개 선택할 수 있음 -->
									<div id="que2" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group" style="margin-top:10px">
											<strong style="margin-top:2vw ; font-family: 'GmarketSansMedium'; font-size: 20pt; color:black">3. 그림에서 집은 어느쪽에 위치해 있나요?</strong>
											<input type="radio" class="btn-check" name="position" value="8" id="vbtn-radio8" autocomplete="off">
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio8">좌측</label>
											<input type="radio" class="btn-check" name="position" value="9" id="vbtn-radio9" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio9">우측</label>
											<input type="radio" class="btn-check" name="position" value="10" id="vbtn-radio10" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radi10">하단</label>
											<input type="radio" class="btn-check" name="position" value="11" id="vbtn-radio11" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radi11">중앙</label> <br>
											
											<strong style="margin-top:2vw ; font-family: 'GmarketSansMedium'; font-size: 20pt; color:black">4. 어떤 시점으로 그림이 그려졌나요?</strong>
											<input type="radio" class="btn-check" name="view" value="12" id="vbtn-radio12" autocomplete="off">
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio12">윗면(위에서 내려다보는)</label>
											<input type="radio" class="btn-check" name="view" value="13" id="vbtn-radio13" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio13">아랫면(아래에서 올려다보는)</label>
											<input type="radio" class="btn-check" name="view" value="14" id="vbtn-radio14" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio14">정면(정면에서 바라보는)</label>
										</div>
									</div>
									
									<div id="que3" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical checkbox toggle button group" style="margin-top:10px">
											<strong style="margin-top:2vw ; font-family: 'GmarketSansMedium'; font-size: 20pt; color:black">5. 지붕은 어떻게 묘사되었나요?(중복선택 가능)</strong>
											<input type="checkbox" class="btn-check" name="roof" value="15" id="vbtn-radio15" autocomplete="off" checked>
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio15">과도하게 큼, 강한선 묘사</label>
											<input type="checkbox" class="btn-check" name="roof" value="16" id="vbtn-radio16" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio16">과도한 무늬</label>
											<input type="checkbox" class="btn-check" name="roof" value="17" id="vbtn-radio17" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radi17">뾰족함 또는 세모 모양</label>
											<input type="checkbox" class="btn-check" name="roof" value="18" id="vbtn-radio18" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radi18">지붕을 덧칠 또는 뭉개는 채색</label>
											<input type="checkbox" class="btn-check" name="roof" value="19" id="vbtn-radio19" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radi19">평범한 지붕</label> <br>
											 <br>
																
											<strong style="margin-top:2vw ; font-family: 'GmarketSansMedium'; font-size: 20pt; color:black">4. 어떤 시점으로 그림이 그려졌나요?</strong>
											<input type="radio" class="btn-check" name="view" value="12" id="vbtn-radio12" autocomplete="off" checked>
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio12">윗면(위에서 내려다보는)</label>
											<input type="radio" class="btn-check" name="view" value="13" id="vbtn-radio13" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio13">아랫면(아래에서 올려다보는)</label>
											<input type="radio" class="btn-check" name="view" value="14" id="vbtn-radio14" autocomplete="off">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="vbtn-radio14">정면(정면에서 바라보는)</label> 
										</div>
									</div>

									<div class="pagingWraper" style="position: absolute;  left: 35%; bottom: 0; padding-bottom: 60px; z-index:999">
										<button type="button" class="prevBtn" onclick="prevQue();">이전</button>
										<span class="page"></span>
										<button type="button" class="nextBtn" onclick="nextQue();">다음</button>
									</div>
								</div>
							</div>
						</form>
						<br><input class="btn btn-info"
						style="background-color: #FE5D37; border-color: #FE5D37; color: white; margin-right:37px";
						id="picSend" type="button" value="다음단계로" onclick="goQuestion();" />
						<button type="button" onclick=""></button>
					</div>
				</div>

				<!-- div#result -->
			</div>
				<!-- <div id="result"></div> -->
				<jsp:include page="../common/footer.jsp"></jsp:include>
		</section>
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
			var id = 'samsam';
			var data = new FormData(form_img);
			console.log("파일 업로드 요청");
			saveImageBeforeUpload(data);
			/* async : false -> 비동기 동기로 변경, 다만 값 받아오기 전에 페이지 이동해 버리면 값 못받고 넘어감!! 주의하자! */
			/* $.ajax({
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
			}); */
		}
		
		function saveImageBeforeUpload(data){
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
			$.ajax({
				type:"POST",
				enctype : 'multipart/form-data',
				url : "saveImage.do",
				data : data,
				async : false,
				processData : false,
				contentType : false,
				beforeSend : function(xhr){
	    			 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	    		 },
				success : function(data){
					if(data == "success"){
						alert(data);
					}
				},
				error : function(e) {
					console.log("파일 저장 에러");
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