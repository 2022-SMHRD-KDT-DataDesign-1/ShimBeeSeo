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
    
    <style>
    	p{
    	color:black;}
    </style>

</head>
<body>

   <div class="container-xxl bg-white p-0">
		<jsp:include page="common/header.jsp"></jsp:include>
		<a href='admin.do'>관리자페이지ㄱㄱ</a>
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
                    <img class="img-fluid" src="${contextPath}/resources/img/i.png"  alt="">
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
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/cEz8EHHU5W4?start=13" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div> 
              
               <div class=" d-flex flex-column justify-content-center">
                  <div class="row g-5 align-items-center">
                  	<div style="width:500px;" class="py-5">
                     <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="margin-top:10%;">
                        <h1 class="mb-4">HTP 검사란?</h1>

                        <p class="mb-4">1.검사 대상에게 집, 나무, 인물화 등 3개의 그림을 그리게 하는 검사입니다.</p>
                        <p class="mb-4">2.그려진 그림의 크기, 선의 강약, 그려진 그림의 위치 등등 표현의 양상에 따라 그린 사람의 심리를 파악할 수 있는 검사 방법입니다.</p>
                        <p class="mb-4">3.언어 표현이 어려운 아동에게도 적용이 가능합니다.</p>
                        <p class="mb-4">4.실시가 용이하고 짧은시간안에 파악할 수 있습니다.</p>
                        
                        <c:choose>
							<c:when test="${not empty mvo}"> <a style="margin-left:10px; width:310px; height: 55px;" class="btn btn-primary" href="check.do">검사 하러가기<i style="margin-top:10px;" class="fa fa-arrow-right ms-2"></i></a> </c:when>
							<c:otherwise> <a style="margin-left:5px; width:300px; height: 55px;" class="btn btn-primary" href="loginPage.do">검사 하러가기<i style="margin-top:10px;" class="fa fa-arrow-right ms-2"></i></a> </c:otherwise>
						</c:choose>
                        
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
               <div class="col-lg-6 about-img wow fadeInUp" data-wow-delay="0.1s">
                        <div class="row" style="position: relative;">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="${contextPath}/resources/img/board.png" style="object-fit: fill;">
                            </div>
                            <!-- call-to-action.jpg -->
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.3s">
                            <div class=" d-flex flex-column justify-content-center">
                            	<div class="row g-5 align-items-center">
                            		<div style="width:500px;" class="py-5">
                                	<h1 class="mb-4">함께 공유해요</h1>
                                	</div>
                                	<a style="margin-top:10px; margin-left:25px; width:300px;; height: 55px;" class="btn btn-primary" href="main.do">게시판으로 이동<i style="margin-top:10px;" class="fa fa-arrow-right ms-2"></i></a>
                            	</div>
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
                        <div class="col-lg-6 wow  fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="${contextPath}/resources/img/help.png" style="object-fit: fill;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.3s">
                            <div class="h-100 d-flex flex-column justify-content-center">
                            	<div class="row g-5 align-items-center">
                            		<div style="width:500px;" class="py-5">
                                	<h1 class="mb-4">무엇을 도와드릴까요?</h1>
                                	</div>
                                	<a style="margin-top:10px; margin-left:25px; width:300px; height: 55px;" class="btn btn-primary" href="">문의하러가기!<i style="margin-top:10px;" class="fa fa-arrow-right ms-2"></i></a>
                            	</div>
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
    

</body>
</html>