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
</head>
<body>
 <div class="container-xxl bg-white p-0">
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- 본문 내용 시작 -->
	
	

	<section class="about-section section-padding" id="section_2">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-12 mx-auto">
                        <div class="pb-5 mb-5">
                            <div class="section-title-wrap mb-4">
                                <h4 class="section-title text-center">검사 결과</h4>
                            </div>
                            
    <div class="testimonial-item bg-light rounded p-5">
	<div style="width: 100%; height: 100%;">
	<!--차트가 그려질 부분-->
	<canvas id="myChart"></canvas>
	
	<input type="hidden" id="result_aggressive" value="${result.get(0).result_aggressive}">
	<input type="hidden" id="result_social_anxiety" value="${result.get(0).result_social_anxiety}">
	<input type="hidden" id="result_depressed" value="${result.get(0).result_depressed}">
	<input type="hidden" id="result_avpd" value="${result.get(0).result_avpd}">
	<input type="hidden" id="result_self_esteem" value="${result.get(0).result_self_esteem}">
	<input type="hidden" id="result_emotional_instability" value="${result.get(0).result_emotional_instability}">
	<input type="hidden" id="result_deprivation" value="${result.get(0).result_deprivation}">
	<input type="hidden" id="result_inferiority" value="${result.get(0).result_inferiority}">
	<input type="hidden" id="result_regression" value="${result.get(0).result_regression}">
</div>

                        <p class="fs-5"> 아프다 이 아이</p>
                    </div>


                        </div>
                    </div>

 				<div class="col-lg-8 col-12 mx-auto">
                        <div class="pb-5 mb-5">
                            <div class="section-title-wrap mb-4">
                                <h4 class="section-title text-center">검사 내용</h4>
                            </div>
                            
	<!-- test용 시작-->
    <div class="testimonial-item bg-light rounded p-5">
                        <p class="fs-5"> 검사 결과 텍스트 들어갈 곳!!!!!!!!!!!!!!!!! </p>
</div>
                    </div>
                        </div>
                        
                         <div class="col-lg-8 col-12 mx-auto">
                        <div class="pb-5 mb-5">
                            <div class="section-title-wrap mb-4">
                                <h4 class="section-title text-center">지도 방향</h4>
                            </div>
                            
    <div class="testimonial-item bg-light rounded p-5">

                        <p class="fs-5"> 지피티의 답이 들어가야함!!!!!!!!!!</p>
                    </div>


                        </div>
                    </div>
                        
                    </div>



                    <div class="col-lg-12 col-12">
                        <div class="section-title-wrap mb-5">
                            <h4 class="section-title">요건 어떠심?</h4>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="team-thumb bg-white shadow-lg">
                            <%-- <img src="${contextPath}/resources/img/g.png"
                                class="about-image img-fluid" alt="">
 --%>						
 							<h4 class="mb-2">
                                    1번
                                </h4><br>
                            <div class="team-info">
                                
                                    <img src="${contextPath}/resources/img/oh.png" style="width: 100%; height: auto;" class="verified-image img-fluid" alt="">
                                
<!-- 
                                <span class="badge">이거슨 무엇일까?</span>

                                <span class="badge">Fashion</span> -->
                            </div>

                            <!-- <div class="social-share">
                                <ul class="social-icon">
                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-twitter"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-facebook"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-pinterest"></a>
                                    </li>
                                </ul>
                            </div> -->
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="team-thumb bg-white shadow-lg">
                            <!-- <img src="images/profile/handsome-asian-man-listening-music-through-headphones.jpg"
                                class="about-image img-fluid" alt=""> -->

                            <div class="team-info">
                                <h4 class="mb-2">
                                    2번
                                 </h4><br>
                                 <img src="${contextPath}/resources/img/why.png" style="width: 100%; height: auto;" class="verified-image img-fluid" alt="">

                                <!-- <span class="badge">Creative</span>

                                <span class="badge">Design</span> -->
                            </div>

                            <!-- <div class="social-share">
                                <ul class="social-icon">
                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-twitter"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-facebook"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-pinterest"></a>
                                    </li>
                                </ul>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
                        <div class="team-thumb bg-white shadow-lg">
                            <img src="images/profile/smart-attractive-asian-glasses-male-standing-smile-with-freshness-joyful-casual-blue-shirt-portrait-white-background.jpg"
                                class="about-image img-fluid" alt="">

                            <div class="team-info">
                                <h4 class="mb-2">
                                    3번
                                    <img src="images/verified.png" class="verified-image img-fluid" alt="">
                                </h4>

                                <span class="badge">Education</span>
                            </div>

                            <div class="social-share">
                                <ul class="social-icon">
                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-linkedin"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-whatsapp"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> -->

                   <%--  <div class="col-lg-3 col-md-6 col-12">
                        <div class="team-thumb bg-white shadow-lg">
                            <img src="images/profile/smiling-business-woman-with-folded-hands-against-white-wall-toothy-smile-crossed-arms.jpg"
                                class="about-image img-fluid" alt="">

                            <div class="team-info">
                                <h4 class="mb-2">
                                    4번
                                    <img src="${contextPath}/resources/img/g.png" class="verified-image img-fluid" alt="">
                                </h4>

                                <span class="badge">Storytelling</span>

                                <span class="badge">Business</span>
                            </div>

                            <div class="social-share">
                                <ul class="social-icon">
                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-twitter"></a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link bi-facebook"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div> --%>
        </section>
 					
 		

	
	
	<!-- 본문 내용 끝 -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	
	    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	
	    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
    
    	  	<!-- Chart.js 불러오기 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<!-- Chart 내용 Javascript -->
	<script type="text/javascript">
			var result_aggressive = document.getElementById("result_aggressive").value;
			var result_social_anxiety = document.getElementById("result_social_anxiety").value;
			var result_depressed = document.getElementById("result_depressed").value;
			var result_avpd = document.getElementById("result_avpd").value;
			var result_self_esteem = document.getElementById("result_self_esteem").value;
			var result_emotional_instability = document.getElementById("result_emotional_instability").value;
			var result_deprivation = document.getElementById("result_deprivation").value;
			var result_inferiority = document.getElementById("result_inferiority").value;
			var result_regression = document.getElementById("result_regression").value;
            var context = document
                .getElementById('myChart')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        '공격성','사회불안','우울','대인회피','자존감','정서불안','애정결핍','열등감','퇴행'
                    ],
                    datasets: [
                        { //데이터
                            label: '심리검사 결과', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [
                            	result_aggressive,result_social_anxiety,result_depressed,result_avpd,result_self_esteem,result_emotional_instability,result_deprivation,result_inferiority,result_regression //x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        }/* ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } */
                    ]
                },
                options: {
                    scales: {
                        yAxes: [
                            {
                            	ticks: {
                            		/* y축 설정 변경 */
            						min: 0,
            						max: 20,
            						stepSize : 2,
            						fontSize : 14,
            						
            						}
                            }
                        ]
                    }
                }
            });
        </script>
	
</body>
</html>
