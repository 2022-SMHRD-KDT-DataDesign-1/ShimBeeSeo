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
function prevQue(){
	var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
	var prevQue = $(".curQue").prev();//현재 질문의 다음질문 div태그의 id
	$('.prevBtn').css("display","");
	curQue.attr("class","que");
	curQue.css("left","100%");
	prevQue.attr("class","curQue que");
	prevQue.css("right","");
	prevBtnShowing();
	nextBtnShowing();
}
function nextQue(){
	var curQue = $(".curQue");//현재 화면에 떠있는 질문 div태그의 id
	var nextQue = $(".curQue").next();//현재 질문의 다음질문 div태그의 id
	$('.prevBtn').css("display","");
	curQue.attr("class","que");
	curQue.css("right","100%");
	nextQue.attr("class","curQue que");
	nextQue.css("left","");
	prevBtnShowing()
	nextBtnShowing();
}
function prevBtnShowing(){
	curId = $(".curQue").attr("id");
	if(curId == "que1"){//첫번째 질문인경우 이전버튼 숨김처리
		$('.prevBtn').css("display","none");
	}else{
		$('.prevBtn').css("display","");
	}
}
function nextBtnShowing(){
	curId = $(".curQue").attr("id");
	lastId = $(".que").last().attr("id");//선택한 div태그의 형제div 중 마지막div태그의 id(대신 모든 형제태그가 같은 class 값을 가져야 함)
	if(curId == lastId){//첫번째 질문인경우 다음버튼 숨김처리
		$('.nextBtn').css("display","none");
	}else{
		$('.nextBtn').css("display","");
	}
}
</script>
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
					<div style="display: block;">
						<div class="uploadPhoto">
							<div style="margin: 0 ">
								<form name="inputImg" method="POST">
									<div style="display: flex;" class="container">
										<div style="display: block; margin: 0 auto" class="col-md-4">
												<!-- <div style=" width: 30rem; height: 30rem;" id="foo2"> -->
													<form action="" method="get">
													<%-- <div style="position: relative;">
														<div style="background-image: src=${contextPath}/resources/img/sk(1).png"><img class="img-bg" style="background-size: 100% 100%;" src="${contextPath}/resources/img/sk(1).png" alt="">
															
														</div>
													</div>
														
												</div> --%>
												<div style="width: 30rem; height: 30rem; background-image:url('${contextPath}/resources/img/sk(1).png'); background-repeat : no-repeat; background-size : 100% 100%; padding: 2rem 1.5rem;">
													<div style="width: 26rem;height: 25rem;padding: 5rem 0.5rem;">
														<div id="que1" class="que" style="position:absolute;width:80vw;right:100%;">
															<ul style="line-height: 30px">
																<li style="list-style: none;"><span>이사람은남자인가요? 여자인가요?</span><br> 
																<input type="radio"
																	name="gender" value="m">남 <input type="radio"
																	name="gender" value="w">여</li>
																<li style="list-style: none;"><span>이사람의 머리는
																		큰편인가요?</span><br> <input type="radio" name="headSize"
																	value="big">큰편 <input type="radio"
																	name="headSize" value="middle">중간 <input
																	type="radio" name="headSize" value="small">작음</li>
																<li style="list-style: none;"><span>이사람의 기분은
																		어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의
																		기분은 어떤가요?</span><br> <input type="radio" name="feeling"
																	value="happy">기분좋음 <input type="radio"
																	name="feeling" value="angry">화남 <input
																	type="radio" name="feeling" value="sad">슬픔</li>
															</ul>
														</div>
														<div id="que2" class="que curQue" style="position:absolute;width:80vw;">
															<ul style="line-height: 30px" >
																<li style="list-style: none;"><span>이사람은
																		2남자인가요? 여자인가요?</span><br> <input type="radio"
																	name="gender" value="m">남 <input type="radio"
																	name="gender" value="w">여</li>
																<li style="list-style: none;"><span>2이사람의 머리는
																		큰편인가요?</span><br> <input type="radio" name="headSize"
																	value="big">큰편 <input type="radio"
																	name="headSize" value="middle">중간 <input
																	type="radio" name="headSize" value="small">작음</li>
																<li style="list-style: none;"><span>2이사람의 기분은
																		어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의
																		기분은 어떤가요?</span><br> <input type="radio" name="feeling"
																	value="happy">기분좋음 <input type="radio"
																	name="feeling" value="angry">화남 <input
																	type="radio" name="feeling" value="sad">슬픔</li>
															</ul>
														</div> 
														<div id="que3" class="que" style="position:absolute;width:80vw;left:100%;">
															<ul style="line-height: 30px" >
																<li style="list-style: none;"><span>3이사람은
																		남자인가요? 여자인가요?</span><br> <input type="radio"
																	name="gender" value="m">남 <input type="radio"
																	name="gender" value="w">여</li>
																<li style="list-style: none;"><span>3이사람의 머리는
																		큰편인가요?</span><br> <input type="radio" name="headSize"
																	value="big">큰편 <input type="radio"
																	name="headSize" value="middle">중간 <input
																	type="radio" name="headSize" value="small">작음</li>
																<li style="list-style: none;"><span>3이사람의 기분은
																		어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의 기분은 어떤가요?이사람의
																		기분은 어떤가요?</span><br> <input type="radio" name="feeling"
																	value="happy">기분좋음 <input type="radio"
																	name="feeling" value="angry">화남 <input
																	type="radio" name="feeling" value="sad">슬픔</li>
															</ul>
														</div>
													</div>
													<div class="qBtnWraper" style="margin: -70px">
														<button type="button" class="prevBtn"  onclick="prevQue();">이전</button>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
	<script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${contextPath}/resources/js/main.js"></script>

</body>
</html>