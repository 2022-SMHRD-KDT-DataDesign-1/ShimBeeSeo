<%@page import="kr.board.entity.User_Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내 정보^오^</title>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
    table, th, td {
    border: 5px; 
    text-align: center;
}
table {
    width: 800px;
    height: 10px;
    transform: translate(0px, 0px);
    transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1);
    transition-duration: 400ms;
  }
  th, td{
  	width: 200px;
  }

.cc{
  overflow: hidden;
  position: relative;
}
.hh{
	margin-bottom: 50px;
}

strong{
	color:black;
	margin-left: 20px;
}
.bi-person-fill{
	font-size: 60px;
	line-height: 60px;
	color: #CBD5E1;
}
.bi-heart{
	font-size: 40px;
	line-height: 40px;
	color: gray;
}
.bi-file-earmark-check{
	font-size: 40px;
	line-height: 40px;
	color: gray;
	
	/* #FFF5F3 */
}
.bi-chat-dots{
	font-size: 40px;
	line-height: 40px;
	color: gray;
}
.bi-file-text{
	font-size: 20px;
	line-height: 20px;
	color: gray;
	margin-top:5px;
}
.bi-gear{
	font-size: 20px;
	line-height: 20px;
	color: gray;
}
.bi-shop{
	font-size: 20px;
	line-height: 20px;
	color: gray;
}
.text{
	font-size: 20px;
}
.gg{
	background-color: #FFF5F3;
}
.bi-chevron-left{
	font-size: 30px;
	line-height: 20px;
	color: gray;
}

a{
	color: gray;
}
/*   * {
  margin: 0;
  padding: 0;
} */




/* a {
  display: inline-block;
  padding: 5px;
} */
  
    </style>
</head>
<body>
 <div class="container-xxl bg-white p-0" style="width: 100%; height: auto;">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- 본문 내용 시작 -->
	<section class="about-section section-padding" id="section_2">
    	<div class="gg">
    		<div class="hh">
    			<div style="padding-top: 30px;">
    			<a href=""><i class="bi bi-chevron-left"></i></a>
    			<strong style="margin-bottom:10px; font-size:20px;">마이페이지</strong></div>
    		</div>
    		<div class="col-lg-8 col-12">
    			<div style="display:flex; height: auto;"><i class="bi bi-person-fill"></i><strong>${mvo.user_name}</strong>님, 안녕하세요!</div>
    		</div>
    		<div style="display: flex; margin-top:40px;">
    			<div style="text-align: center; width: 33%; padding : 25px 0; background-color: rgba( 226, 249, 202, 1);">
    			<i class="bi bi-heart"><br><a style="font-size: 15px; display:block; color:">찜 목록</a></i>
    			</div>
    			<div style="text-align: center; width: 33%; padding : 25px 0; background-color: rgba( 226, 249, 202, 1);">
    			<i class="bi bi-file-earmark-check"><br><a style="font-size: 15px; display:block; color:gray;" href="UserResult.do">검사내역</a></i>
    			</div>
    			<div style="text-align: center; width: 33%; padding : 25px 0; background-color: rgba( 226, 249, 202, 1);">
    			<i class="bi bi-chat-dots"><br><a style="font-size: 15px; display:block;">내 리뷰</a></i>
    			</div>
    		</div>
        	<div class="row" style="margin-top:30px;">
            	<div class="col-lg-8 col-12">
                	<div class="pb-5 mb-5">
                   		<div style="float:left; margin-top:4px; margin-left:15px;" ><i class="bi bi-gear"></i></div>
                   		<div style="margin-left: 50px;"><p class="text" >내 정보 수정</p></div>
                   		<div style="float:left; margin-top:4px; margin-left:15px;"><i class="bi bi-shop"></i></div>
                   		<div style="margin-left: 50px;"><p class="text">연계 기관 소개</p></div>
               	  	</div>              	 
             	</div>		
        	</div>
        	
        	<button class="btn btn-primary w-100 py-3" type="button">로그아웃</button>
		</div>
                        

	</section>	
<!-- 본문 내용 끝 -->
<jsp:include page="../common/footer.jsp"></jsp:include>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
<script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
<script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
<script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	
<!-- Template Javascript -->
<script src="${contextPath}/resources/js/main.js"></script>
    
<!-- Chart.js 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		
</body>
</html>
