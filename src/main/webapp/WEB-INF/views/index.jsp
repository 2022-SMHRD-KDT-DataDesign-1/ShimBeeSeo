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
<a href="javascript:GPTTest('content')"> 플라스크에 JSON 보내보기</a>
<<<<<<< HEAD
<a href="songSecret.do">들어오지마셈</a>

=======
<a href="http://localhost:5000/?id=testID2"> 쿼리스트링 테스트</a>
<a href="UserResult.do">Chart.JS 테스트</a>
>>>>>>> jyj

   <div class="container-xxl bg-white p-0">
		<jsp:include page="common/header.jsp"></jsp:include>

        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="${contextPath}/resources/img/ma.png" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0, 0, 0, .2);">
                        <div class="container">
                            <div class="row justify-content-start">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="${contextPath}/resources/img/i.png" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(0, 0, 0, .2);">
                        <div class="container">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
               <div class="col-lg-6 about-img wow fadeInUp" data-wow-delay="0.5s">
                        <div class="row" style="position: relative;">
	                        <!-- <div class="col-12 text-center"> -->
	                        	<img class="img-fluid w-75 rounded-circle bg-light p-3" src="${contextPath}/resources/img/htp.png" alt="">
	                        <!-- </div> -->
                            <%-- <div class="col-12 text-center">
                                <img class="img-fluid w-75 rounded-circle bg-light p-3" src="${contextPath}/resources/img/home.jpg" alt="">
                            </div>
                            <div class="col-6 text-start" style="position: absolute; margin-top: 35%; margin-left: 10%;">
                                <img class="img-fluid w-70 rounded-circle bg-light p-3" style="width: 80%; height: auto;" src="${contextPath}/resources/img/tree.png" alt="">
                            </div>
                            <div class="col-6 text-end" style="position: absolute; margin-top: 37%; margin-left: 48%; width: 40%;">
                                <img class="img-fluid w-100 rounded-circle bg-light p-3" style="height: 165px"; src="${contextPath}/resources/img/person.jpg" alt="">
                            </div> --%>
               <div class="h-100 d-flex flex-column justify-content-center p-5">
                  <div class="row g-5 align-items-center">
                     <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="margin-top:40%;">
                        <h1 class="mb-4" style="font-family: GmarketSansMedium">HTP 검사란?</h1>
                        <p class="mb-4">집, 나무, 사람 그림을 그려서 검사하는 심리검사임</p>
                        <a class="btn btn-primary py-3 px-5" href="check.do">검사 하러
                           가기<i class="fa fa-arrow-right ms-2"></i>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Call To Action Start -->
       <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="${contextPath}/resources/img/call-to-action.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4">함께 공유해요</h1>
                                <p class="mb-4">좋은게 있으면 함께 공유합시다. (혼자만 알지말고)
                                </p>
                                <a class="btn btn-primary py-3 px-5" href="main.do">게시판으로 이동<i class="fa fa-arrow-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call To Action End -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="${contextPath}/resources/img/Inquire.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4">무엇을 도와드릴까요??</h1>
                                <p class="mb-4">궁금한게 있으면 언제든 문의주세요!!!! </p>
                                <a class="btn btn-primary py-3 px-5" href="">문의하러가기!<i class="fa fa-arrow-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

   <jsp:include page="common/footer.jsp"></jsp:include>

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
    
    <!-- Flask로 Json형태로 데이터 전송 -->
	<script type="text/javascript">
	function GPTTest(){
	var content = "우리아이 어떻게 키울까요???";
	$.ajax({
		url : "http://127.0.0.1:5000/", 
		type : "get",
		data : {"content": content},
		dataType : "json", 
		success : alert("굳"),
        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
            alert("통신 실패.")
        }
		});
	}
	</script>
</body>
</html>