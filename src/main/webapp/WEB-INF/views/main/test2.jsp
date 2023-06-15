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
	
	/* function checkboxArr() {
		var valueArr = [];		// 배열 초기화
		$("input[class=btn-check]:checked").each(function(){
			var chk = $(this).val();
			valueArr.push(chk);
		});
		
		$.ajax({
			url: '${contextPath}/ScoreList.do',
			type : 'post',
			dataType : "text",
			data : { "valueArr" : valueArr}
			
		});
		} */
		
		
		

	
	
	
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
		<section id="projects" class="about-section text-center">
			<div style="margin-top: 0;" class="testView">
				<h1><strong>집</strong></h1>
						<div class="uploadPhoto">
							<form method="POST" enctype="multipart/form-data" id="form_img">
							
								<div class="flex-container">
									<div class="wrapper">
										<h2>FileUpload</h2>
										<p>아래 버튼을 눌러 사진을 업로드 해주세요</p>
										<div style="position: relative;">
											<img src="${contextPath}/resources/images/fileUpload.png" class="image-box" style="min-width:350px"; height="350px"; />
												<label for="file" class="upload-btn">
												<input id="file" name="file" type="file" accept="image/*" style="display: none;" onchange="changeFile()"/>
												</label>
										</div>
										
									</div>

								<!-- 미리보기 이후 파일 업로드하기 -->
									<!-- if문 써야함 대기중 -->
									<p id="submitInfo" style="margin-top:3vw; display: none;">아래 버튼을 눌러 AI에게 사진을 보내주세요!!</p>
									<button type="button" id="submitPicture"onclick="uploadFunction();" class="form-control btn btn-warning" style="width: 150px; display:none; color: white; background-color: #FE5D37">AI에게 사진제출</button>
								<!--미리보기 테스트 끝 -->
								
								
								
								</div>
							</form>
						</div>
			</div>	
			<div style="margin: 0; display:none;" id="question">
								<div class="section-title-wrap mb-4" style="margin-top:4vw;">
							<h1 class="section-title text-center">사진 상세 질문</h1>
						</div>
				<!-- <form name="inputImg" method="POST"> -->
				<div style="display: flex; width: 100%; margin-top: 6vw;" class="container">
					<div style="width: 100%; display: block; margin: 0 auto" class="col-md-4">
						<form id="checkboxes" action="${contextPath}/ScoreList.do" method="POST">
							<div style="width:100%;height:auto; min-height:700px;position:relative;overflow:hidden;background-image:url('${contextPath}/resources/img/sk(1).png'); background-repeat : no-repeat; background-size : 100% 100%;">
								<div id="queWrap" class="" style="width:100%;height:auto; padding:55px 40px 90px 18px;">
									<div id="que1" class="que curQue" style="width:100%;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">1. 그림의 전체적인 분위기는 어떤가요?</strong>
											<input type="radio" class="btn-check" name="mood" value="1" id="mood1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="mood1">보통</label>
											<input type="radio" class="btn-check" name="mood" value="2" id="mood2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="mood2">조금 부정적</label>
											<input type="radio" class="btn-check" name="mood" value="3" id="mood3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="mood3">완전 부정적</label> 
										</div>
										
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">2. 종이의 전체 면적에서 집이 얼마나 차지하나요?</strong>
											<input type="checkbox" class="btn-check" name="size" value="4" id="size1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="size1">보통(중앙에서 2/3 정도 차지)</label>
											<input type="checkbox" class="btn-check" name="size" value="5" id="size2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="size2">지나치게 큼</label>
											<input type="checkbox" class="btn-check" name="size" value="6" id="size3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="size3">지나치게 작음</label> 
											<input type="checkbox" class="btn-check" name="size" value="7" id="size4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="size4">파손 됨(절단된 집)</label> 
										</div>
											
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">3. 그림에서 집은 어느쪽에 위치해 있나요?</strong>
											<input type="radio" class="btn-check" name="position" value="8" id="position1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="position1">좌측</label>
											<input type="radio" class="btn-check" name="position" value="9" id="position2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="position2">우측</label>
											<input type="radio" class="btn-check" name="position" value="10" id="position3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="position3">하단</label> 
											<input type="radio" class="btn-check" name="position" value="11" id="position4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="position4">중앙</label> 
										</div>
									</div>
										
									<div id="que2" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">4. 어떤 시점으로 그림이 그려졌나요?</strong>
											<input type="radio" class="btn-check" name="sight" value="12" id="sight1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sight1">윗면(위에서 내려다보는)</label>
											<input type="radio" class="btn-check" name="sight" value="13" id="sight2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sight2">아랫면(아래에서 올려다보는)</label>
											<input type="radio" class="btn-check" name="sight" value="14" id="sight3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sight3">정면(정면에서 바라보는)</label>
										</div>
											
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">5. 지붕은 어떻게 묘사되었나요?</strong>
											<input type="checkbox" class="btn-check" name="roof" value="15" id="roof1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="roof1">과도하게 큼, 강한선 묘사</label>
											<input type="checkbox" class="btn-check" name="roof" value="16" id="roof2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="roof2">과도한 무늬</label>
											<input type="checkbox" class="btn-check" name="roof" value="17" id="roof3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="roof3">뾰족함 또는 세모 모양</label>
											<input type="checkbox" class="btn-check" name="roof" value="18" id="roof4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="roof4">지붕을 덧칠 또는 뭉개는 채색</label>
											<input type="checkbox" class="btn-check" name="roof" value="19" id="roof5" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="roof5">평범한 지붕</label>
										</div>
									</div>
										
									<div id="que3" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">6. 집을 구성하는 벽의 모습은 어떤가요?</strong>
											<input type="radio" class="btn-check" name="wall" value="20" id="wall1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="wall1">허술한 벽</label>
											<input type="radio" class="btn-check" name="wall" value="21" id="wall2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="wall2">지나치게 견고한 벽돌이나 벽면</label>
											<input type="radio" class="btn-check" name="wall" value="22" id="wall3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="wall3">평범한 벽</label>
										</div>
											
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">7. 현관문의 크기와 모양은 어떻게 묘사되었나요?</strong>
											<input type="checkbox" class="btn-check" name="door" value="23" id="door1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door1">과하게 큼</label>
											<input type="checkbox" class="btn-check" name="door" value="24" id="door2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door2">과하게 작음</label>
											<input type="checkbox" class="btn-check" name="door" value="25" id="door3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door3">집의 측면에 위치</label>
											<input type="checkbox" class="btn-check" name="door" value="26" id="door4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door4">덧칠된 또는 잠금장치가 있는 현관문</label>
											<input type="checkbox" class="btn-check" name="door" value="27" id="door5" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door5">없음</label>
											<input type="checkbox" class="btn-check" name="door" value="28" id="door6" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="door6">특징 없는 평범한 현관문</label>
										</div>
									</div>
										
									<div id="que4" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">8. 창문은 어떤 특징이 있나요?</strong>
											<input type="checkbox" class="btn-check" name="window" value="29" id="window1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="window1">없음</label>
											<input type="checkbox" class="btn-check" name="window" value="30" id="window2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="window2">3개 이상</label>
											<input type="checkbox" class="btn-check" name="window" value="31" id="window3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="window3">커튼으로 가려짐</label>
											<input type="checkbox" class="btn-check" name="window" value="32" id="window4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="window4">2층 이상의 지붕위에만 있음</label>
										</div>
											
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">9. 굴뚝의 모습에 특징이 있나요?</strong>
											<input type="radio" class="btn-check" name="chimney" value="33" id="chimney1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="chimney1">없음</label>
											<input type="radio" class="btn-check" name="chimney" value="34" id="chimney2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="chimney2">연기가 없는 굴뚝</label>
											<input type="radio" class="btn-check" name="chimney" value="35" id="chimney3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="chimney3">연기나는 굴뚝</label>
										</div>
											
										<div class="btn-group-vertical" role="group"aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">10. 그림에 태양이 묘사되어 있나요?</strong>
											<input type="checkbox" class="btn-check" name="sun" value="36" id="sun1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sun1">반만 나온 태양</label>
											<input type="checkbox" class="btn-check" name="sun" value="37" id="sun2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sun2">무채색 태양</label>
											<input type="checkbox" class="btn-check" name="sun" value="38" id="sun3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sun3">없음</label>
											<input type="checkbox" class="btn-check" name="sun" value="39" id="sun4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="sun4">평범한 태양</label>
										</div>
									</div>
										
									<div id="que5" class="que" style="display:none;">
										<div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
											<strong style="margin-top:2vw; font-size: 20pt; color:black">11. 그림에 묘사된 다른 모습들이 있나요?</strong>
											<input type="checkbox" class="btn-check" name="etc" value="40" id="etc1" autocomplete="off" onclick="selectCheck()"> 
											<label style="margin-top: 1.9vw; margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc1">산속 또는 숲속 집</label>
											<input type="checkbox" class="btn-check" name="etc" value="41" id="etc2" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc2">울타리가 있거나 울타리같은 지면</label>
											<input type="checkbox" class="btn-check" name="etc" value="42" id="etc3" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc3">연못, 우물, 비 표현</label>
											<input type="checkbox" class="btn-check" name="etc" value="43" id="etc4" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc4">벽 등을 통해 투시되는 집 내부</label>
											<input type="checkbox" class="btn-check" name="etc" value="44" id="etc5" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc5">의인화된 집</label>
											<input type="checkbox" class="btn-check" name="etc" value="45" id="etc6" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc6">음영, 그림자 표현 또는 지웠다 그리기를 반복한 흔적</label>
											<input type="checkbox" class="btn-check" name="etc" value="46" id="etc7" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc7">평면도형태의 집</label>
											<input type="checkbox" class="btn-check" name="etc" value="47" id="etc8" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc8">덧칠된 채색</label>
											<input type="checkbox" class="btn-check" name="etc" value="48" id="etc9" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc9">넓고 자세한 선으로 강조된 지면선</label>
											<input type="checkbox" class="btn-check" name="etc" value="49" id="etc10" autocomplete="off" onclick="selectCheck()">
											<label style="margin-bottom: 1.9vw; border-radius: .6rem;" class="btn btn-outline-danger" for="etc10">해당되는 특징 없음</label>
										</div>
									</div>
									<div class="pagingWraper" style="position:absolute;left:31%;bottom:0;padding-bottom:60px">
										<button type="button" class="prevBtn" onclick="prevQue();">이전</button>
										<span class="page"></span>
										<button type="button" class="nextBtn" onclick="nextQue();">다음</button>
									</div>
								</div>

												<!-- get : 도메인쪽에 내가 입력한 것이 붙어서 서버쪽으로 가는 것 -->
												<!-- post: 정보은닉이 되어 서버쪽으로 가는 것 -->


												<!-- checkbox는 name이 같아야함 -->
												<!-- 여러개 선택할 수 있음 -->
												
										
							</div>
							<div>
								<input type="hidden" name="result_direction" id="result_direction"> 
								<input class="btn btn-info" style="background-color: #FE5D37; border-color: #FE5D37; color: white;" 
									id="picSend" type="button" value="검사유형선택" onclick="location.href='check.do'" />
								<input class="btn btn-info" style="background-color: #FE5D37; border-color: #FE5D37; color: white; margin-right:30px;" id="submitSend" type="submit" disabled='disabled' value="모든 질문에 답변해주세요" onclick="notification()">
								</div>
								
							</form>
						</div>
					</div>
									
								<%-- <input class="btn btn-info"
								style="background-color: #FE5D37; border-color: #FE5D37; color: white"
								id="picSend" type="button" value="제출하기버튼" onclick="location.href='${contextPath}/ScoreList.do'"> --%>
								<!-- <input class="btn btn-info"
								style="background-color: #FE5D37; border-color: #FE5D37; color: white"
								id="picSend" type="button" value="button" onclick="checkboxArr()"> -->
								
					<div id="resultView">
					<h3 id="resultTxt"></h3>
					</div>	
          	<div id="result"></div>
		</section>
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

		/* let url = 'http://192.168.56.1:9000/photo'; */

		/* 	 	const response = fetch('http://192.168.56.1:9000/photo', {
		 method: 'POST',
		 body: formData
		 }); */

		/* const formData = new FormData(); */

/* =========================이미지 모델에게 확인 요청 ================================= */
		function uploadFunction() {
			$('#submitPicture').prop('disabled',true);
			$('#submitPicture').text('AI가 사진을 분석중입니다.');
			// 임의 test, id값 쿼리스트링으로 보내기
			var id = 'samsam';
			var data = new FormData(form_img);
			console.log("파일 업로드 요청");
			saveImageBeforeUpload(data);
			/* async : false -> 비동기 동기로 변경, 다만 값 받아오기 전에 페이지 이동해 버리면 값 못받고 넘어감!! 주의하자! */
			// http://211.105.164.246:9000/test
			$('#question').css('display','block')
			 $.ajax({
				type : "POST",
				enctype : "multipart/form-data",
				url : "http://211.105.164.246:9000/h_photo",
				data : data,
				async : false,
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
						
						var addInput = document.querySelector('#que1');
						addInput.innerHTML += "<input type='hidden' name='item' value='"+items['message']+"'>"
						
						
						// ChatGPT에 객체 탐지 결과 불러와서 질문 집어넣기
						var prompt = "";
						var cnt = 1;
						var inputText = items['message'];
						var keywordSplitYes = inputText.split(";")[0];
						var keywordSplitNo = inputText.split(";")[1];
						var keywordExist = keywordSplitYes.split(",");
						var keywordNull = keywordSplitNo.split(",");
						
						console.log(keywordExist);
						console.log(keywordNull);
						prompt += "HTP검사중에 집그림 검사를 시작할거야 대상은 8세 미만의 아동이야\n";
						for(var i = 0 ; i < keywordExist.length; i++){
							if(keywordExist[i]== 'house'){								
							prompt+=cnt+".집이 존재함 \n";
							}
							if(keywordExist[i]== 'door'){								
							prompt+=cnt+".문이 존재함 \n";
							}
							if(keywordExist[i]== 'window'){								
							prompt+=cnt+".창문이 존재함 \n";
							}
							if(keywordExist[i]== 'wall'){								
							prompt+=cnt+".벽이 존재함 \n";
							}
							if(keywordExist[i]== 'chimney'){								
							prompt+=cnt+".굴뚝이 존재함 \n";
							}
							if(keywordExist[i]== 'roof'){								
							prompt+=cnt+".지붕이 존재함 \n";
							}
							if(keywordExist[i]== 'sun'){								
							prompt+=cnt+".태양이 존재함 \n";
							}
							if(keywordExist[i]== 'c_smoke'){
							prompt+=cnt+"굴뚝과 연기가 존재함 \n";
							}
							if(keywordExist[i]== 'fence'){
							prompt+=cnt+"울타리가 존재함 \n";
							}
							if(keywordExist[i]== 'tree'){
								prompt+=cnt+"나무가 존재함 \n";
							}else{
								prompt+="";
								}
							cnt++;
						}
							for(var i = 0 ; i < keywordNull.length; i++){
								if(keywordNull[i]== 'house'){								
								prompt+=cnt+".집이 없음 \n";
								}
								if(keywordNull[i]== 'door'){								
								prompt+=cnt+".문이 없음 \n";
								}
								if(keywordNull[i]== 'window'){								
								prompt+=cnt+".창문이 없음 \n";
								}
								if(keywordNull[i]== 'wall'){								
								prompt+=cnt+".벽이 없음 \n";
								}
								if(keywordNull[i]== 'chimney'){								
								prompt+=cnt+".굴뚝이 없음 \n";
								}
								if(keywordNull[i]== 'roof'){								
								prompt+=cnt+".지붕이 없음 \n";
								}
								if(keywordNull[i]== 'sun'){								
								prompt+=cnt+".태양이 없음 \n";
								}
								if(keywordNull[i]== 'c_smoke'){
								prompt+=cnt+"굴뚝과 연기가 없음 \n";
								}
								if(keywordNull[i]== 'fence'){
								prompt+=cnt+"울타리가 없음 \n";
								}
								if(keywordNull[i]== 'tree'){
									prompt+=cnt+"나무가 없음 \n";
									}else{
									prompt+="";
									}
							cnt++;
						};
						prompt += "위 검사 결과를 바탕으로 아이의 양육방식에 대하여 부모님의 관점으로 5가지 말해줘";
						console.log(prompt);
						

							$.ajax({
								url : "http://121.147.0.189:9900/chatbot",
								Type : "get",
								data : {"message" : prompt},
								dataType : "json",
								contentType: 'application/json; charset=utf-8',
								success : function (chatbot_response){
									console.log(chatbot_response['response']);
									$('#result_direction').val(chatbot_response['response']);
									$('#submitPicture').prop('disabled',false);
									$('#submitPicture').text('분석완료! 설문을 진행해주세요');
								},
								error : function (){
									console.log("flask에서 아무고토 못받음");
								}
							});
					} else {
						console.log("파일 업로드 실패");
					}
				},
				error : function(e) {
					console.log("파일 업로드 에러");
				}
		}); };
		//http://211.105.164.246:9000/test
		function saveImageBeforeUpload(data){
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
			$.ajax({
				type:"POST",
				enctype : 'multipart/form-data',
				url : "saveImage.do",
				data : data,
				/* async : false, */
				processData : false,
				contentType : false,
				beforeSend : function(xhr){
	    			 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	    		 },
				success : function(data){
					if(data == "success"){
						alert(data);
					} else {
						var addInput = document.querySelector('#que1');
						addInput.innerHTML += "<input type='hidden' name='photo' value="+data+">"
					}
				},
				error : function(e) {
					console.log("파일 저장 에러");
				}
			});
		};
	</script>
	
	<!-- 이미지 미리보기 처리 -->
	<script type="text/javascript">
	const fileDOM = document.querySelector('#file');
	const upload = document.querySelector('.image-box')
	const previews = document.querySelectorAll('.image-box');
	
	upload.addEventListener('click', () => fileDOM.click());
	
	fileDOM.addEventListener('change', () => {
	  const reader = new FileReader();
	  reader.onload = ({ target }) => {
	    previews[0].src = target.result;
	  };
	  reader.readAsDataURL(fileDOM.files[0]);
	});


	</script>
	
	<script type="text/javascript">
	function changeFile(){
		console.log('changeFile 잘 됨');
		var file = $('#file');
		console.log(file);
		if(file != null){
			$('#submitInfo').css('display','inline-block');
			$('#submitPicture').css('display','inline-block');
			
		}else{
			$('#submitPicture').css('display','none');
		}
	}
	</script>
	
	<script type="text/javascript">
	function selectCheck(){
		var mood = $('input[name=mood]').is(":checked");
		var size = $('input[name=size]').is(":checked");
		var position = $('input[name=position]').is(":checked");
		var sight = $('input[name=sight]').is(":checked");
		var roof = $('input[name=roof]').is(":checked");
		var wall = $('input[name=wall]').is(":checked");
		var door = $('input[name=door]').is(":checked");
		var window = $('input[name=window]').is(":checked");
		var chimney = $('input[name=chimney]').is(":checked");
		var sun = $('input[name=sun]').is(":checked");
		var etc = $('input[name=etc]').is(":checked");

		if(mood == true && size == true && position == true && sight == true && roof == true && wall == true && door == true && window == true && chimney == true && sun == true && etc == true){
			console.log("전부 체크됨");
			var checkPicture = $('#submitPicture').text();
			if(checkPicture == '분석완료! 설문을 진행해주세요'){
				
			$('#submitSend').attr("disabled", false);
			$('#submitSend').attr("value",'제출하기');
			}
		}
		
	};
	</script>
	
	<!-- 카카오톡 나에게 보내기 Flask요청 -->
	<script type="text/javascript">
	function notification(){
		var date = new Date();
	    var year = date.getFullYear();
	    var month = ("0" + (1 + date.getMonth())).slice(-2);
	    var day = ("0" + date.getDate()).slice(-2);
	    var today= year + "-" + month + "-" + day;
	    console.log(today);
		var accessToken = "${accessToken}";
	    console.log(accessToken);

		var name = "${mvo.user_name}";
	    console.log(name);

		$.ajax({
			url : "http://localhost:5000/kakao",
			Type : "get",
			data : {"accessToken" : accessToken,
					"name" : name,
					"today" : today},
			dataType : "json",
			contentType: 'application/json; charset=utf-8',
			success : function(message){
				console.log(message);
			},
			error : function (){
				console.log("카카오톡 알림 실패 ㅠㅠ");
			}
		});
	};
	</script>
	
	
</body>
</html>