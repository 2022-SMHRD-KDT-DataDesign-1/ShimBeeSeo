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
	@font-face {
    font-family: 'SBAggroB';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.hh{
	margin-bottom: 50px;
}

strong{
	color:black;
	margin-left: 20px;
}
.bi-person-fill{
	font-size: 86px;
	line-height: 80px;
	color: #CBD5E1;
}
.bi-heart{
	font-size: 40px;
	line-height: 40px;
	color: black;
}
.bi-file-earmark-check{
	font-size: 40px;
	line-height: 40px;
	color: black;
	
	/* #FFF5F3 */
}
.bi-chat-dots{
	font-size: 40px;
	line-height: 40px;
	color: black;
}
.bi-file-text{
	font-size: 20px;
	line-height: 20px;
	color: black;
	margin-top:5px;
}
.bi-gear{
	font-size: 40px;
	line-height: 20px;
	color: gray;
}
.bi-shop{
	font-size: 40px;
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


.bi-arrow-right-circle-fill{
	color: gray;
	font-size: 30px;
	line-height: 20px;
}
.bi-power{
	color: gray;
	font-size: 30px;
	line-height: 20px;
}
/*   * {
  margin: 0;
  padding: 0;
} */




/* a {
  display: inline-block;
  padding: 5px;
} */
/* .divclass{
	border: 0.1vw solid #999;
	border-radius: 2vw;
	margin-right: 1vw;
}
   */
    </style>
</head>
<body>
 <div class="container-xxl p-0" style="width: 100%; height: auto; background-color: #FFF5F3">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- 본문 내용 시작 -->
	<section class="about-section section-padding" id="section_2">
    	<div class="gg">
    		<div class="hh" style="position: relative;">
    			<div style="margin-top:-14vw; padding-top: 66px; height: 72vw; position: absolute; background: #F5B4A6; width: 100%;">
    			<strong style="margin-left:20px; font-size:20px; color:white;"><strong style="color:white;">${mvo.user_name}</strong>님, 안녕하세요!</strong></div>
    		</div>
    		
    		<div class="col-lg-8 col-12" style="position: absolute; z-index: 3;">
    			<div style="display:inline-block; height: auto; border-radius: 50%; background: white; margin-top: 25vw; margin-left: 38vw;">
    				<i class="bi bi-person-fill"></i>
    			</div>
    		</div>
    		<div style="position:absolute; display: flex; margin-left:36px; width: 80%; margin-top: 150px; background: white;
    			border-radius: 30px 30px 30px 30px / 30px 30px 30px 30px;">
    			<div style="width: 100%; display: flex">
	    			<div class="divclass" style="text-align: center; width: 33%; padding : 4vw 0; margin-top:11vw;">
	
	    			<i class="bi bi-heart"><br></i><a style="margin-top:10px; font-size: 15px;font-family: 'SBAggroB';  display:block; color:black">찜 목록</a>
	
	    			</div>
	    			
	    			<div class="divclass" style="text-align: center; width: 33%; padding : 4vw 0; margin-top:11vw;">
	    			<i class="bi bi-file-earmark-check"><br></i><a style="margin-top:10px; font-size: 15px; font-family: 'SBAggroB'; display:block; color:black;" href="UserResult.do">검사내역</a>
	    			</div>
	    			<div class="divclass divclass_l" style="text-align: center; width: 33%; padding : 4vw 0; margin-top:11vw; ">
	
	    			<i class="bi bi-chat-dots"><br></i><a style="margin-top:10px; font-size: 15px; font-family: 'SBAggroB'; display:block; color:black">내 리뷰</a>
	    			</div>
    			</div>
    		</div>
        	<div class="row" style="margin-top:30px; width: 95%;">
            	<div class="col-lg-8 col-12">
                	<div style="margin-top: 382px; width:80%; height: 100%;">
                		<div style="background: white; width: 110%; margin-left:36px; height: 100px;
                		 border-radius: 30px 30px 30px 30px / 30px 30px 30px 30px; padding: 14px;">
                			<!-- <div style="float:left; margin-top:25px; margin-left:15px;" ><i class="bi bi-gear"></i></div> -->
                   			<div style="margin-top:20px;"><p class="text" style="float:left; font-family: 'SBAggroB'; margin-top:3px;">내 정보 수정</p>
                   			 <i class="bi bi-arrow-right-circle-fill" style="float:right"></i>
                   			</div>
                		</div>
                   		<div style="background: white; width: 110%; margin-top:20px; margin-left:36px; height: 100px;
                		 border-radius: 30px 30px 30px 30px / 30px 30px 30px 30px; padding: 14px;">
                   			<!-- <div style="float:left; margin-top:25px; margin-left:15px;"><i class="bi bi-shop"></i></div> -->
                   			<div style="margin-top:20px; "><p class="text" style="float:left; font-family: 'SBAggroB'; margin-top:3px;">연계 기관 소개</p>
                   			<i class="bi bi-arrow-right-circle-fill" style="float:right"></i>
                   			</div>
                   		</div>
                   		<div style="background: white; width: 110%; margin-top:20px; margin-left:36px; height: 100px;
                		 border-radius: 30px 30px 30px 30px / 30px 30px 30px 30px; padding: 14px;">
                   			<!-- <div style="float:left; margin-top:25px; margin-left:15px;"><i class="bi bi-shop"></i></div> -->
                   			<div style="margin-top:20px;">
                   			<p class="text" style="float:left; font-weight: 30px; font-family: 'SBAggroB'; margin-top:3px;">로그 아웃</p>
                   			<i class="bi bi-power" style="float:right"></i>
                   			</div>
                   		</div>
               	  	</div>              	 
             	</div>		
        	</div>
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
