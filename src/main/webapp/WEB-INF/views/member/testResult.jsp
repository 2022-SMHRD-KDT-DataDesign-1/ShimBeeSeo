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
	
	

	
    <div class="container">
        <div class="row">
        	<div class="col-lg-8 col-12">
                <div class="pb-5 mb-5">
                    <div class="section-title-wrap mb-4">
						<h2 class="section-title text-center" style="font-size:28px; padding:4vw; padding-top:8vw;">감정 그래프</h2>
					</div>
                    	<!-- <div class="section-title-wrap mb-4">
                        	<h4 class="section-title text-center">검사 결과</h4>
                       	</div> -->
    				<div class="bg-light rounded">
						<div style="width: 100%; height: 100%;">
							<div id="resetChart">
							<!--차트가 그려질 부분-->
								<canvas id="myChart" width="100%" height="130%" margin-left="15px" padding-left="25px"></canvas>
							</div>
						</div>
                    </div>
               	</div>
            </div>
            <div class="col-lg-8 col-12 mx-auto">
				<div>
					<h1 class="section-title text-center" style="margin-bottom:40px;">검사 결과</h1>
						<div class="testimonial-item bg-light rounded p-4">
							<h2 class="section-title text-center" style="font-size:28px; padding-top:4vw; padding-bottom:6vw;">감정분석 결과</h2>
							<p id="result_c_text" style="font-size:5vw; padding:1vw;"></p>
						</div>
						<!-- test용 시작-->
						<div class="testimonial-item bg-light rounded p-4">
							<h2 class="section-title text-center" style="font-size:28px; margin-bottom:12vw;">그림 결과</h2>
							<p id="result_o_text" style="font-size:5vw; padding:1vw;"></p>
						</div>
				</div>
			</div>
 				<!-- <div class="col-lg-8 col-12 mx-auto">
            		<div class="pb-5 mb-5">
                		<div class="section-title-wrap mb-4">
                     		<h4 class="section-title text-center" style="font-size:30px">검사 내용</h4>
                    	</div> -->
                            
			<!-- test용 시작-->
    					<!-- <div class="testimonial-item bg-light rounded p-5">

                			<div style="font-size:25px" id="result_o_text">
                			</div>
						</div> -->
	    				<!-- <div class="testimonial-item bg-light rounded p-5">
							<div id="result_c_text" style="font-size:25px"> </div>
	                    </div> -->
           	</div>
       
           	<div class="col-lg-8 col-12 mx-auto">
           		<div>
           			<h1 class="section-title text-center" style="font-size:40px;">지도 방향</h1>
           			<div class="testimonial-item bg-light rounded p-4">
           				<p id="result_direction" style="font-size:5vw; padding:1vw;"></p>
           			</div>
           		</div>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">

					<h4 class="mb-2">1번</h4>
					<br>
					<div class="row">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/AuV4E43g4vQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					</div>

				</div>
			</div>
		</div>
			<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">
					<div class="row">
                    	<iframe width="56d0" height="315" src="https://www.youtube.com/embed/BnwcFZxd-OQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
					</div>
				</div>
			</div>
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
		
		<!-- Chart 내용 Javascript -->

        
    <script type="text/javascript">
        
        
    	$(document).ready(function() {
    		getResult();
    		
    		/* $("#result_o_text").on({
    			mouseover:function(){
    				var tg = $(this);
    				tg.removeClass().addClass()
    			
    		}}) */
    		
    		/* $(document).on('mouseover', ".title", (e) => {
    			console.log(e);
            	if( $(this).next().css('display') == 'none') {
            		$(this).siblings().css('display', 'inline-block');
            	} else {
            		$(this).siblings().css('display', 'none');
            	}
            })*/ 
    	});
        
        
        /* function showContent(){
        	
        } */
        
        /* JSON형태로 사용자 검사 결과 받아오는 함수 */
    	/* function loadResult() {
    		$.ajax({
    			url :  "testResultOne.do" ,
    			type : "get",
    			dataType : "json",
    			success : function () {
    				getResult
    				$('.content').css('display', 'none');
    				$('.content').style.display = 'none';	
    			}, // callback 함수 요청되고나서 실행하는 함수
    			error : function() {
    				alert("loadResult error");
    			}
    		});
    	} */
        
    	function getResult(){
    		$.ajax({
    			url :  "testResultOne.do",
    			type:"get",
    			dataType : "json",
    			success : function(result){
    				
    				console.log(result);
    				var result_aggressive = result.result_aggressive;
    	    		var result_social_anxiety = result.result_social_anxiety;
    	    		var result_depressed = result.result_depressed;
    	    		var result_avpd = result.result_avpd;
    	    		var result_self_esteem = result.result_self_esteem;
    	    		var result_emotional_instability = result.result_emotional_instability;
    	    		var result_deprivation =result.result_deprivation;
    	    		var result_inferiority =result.result_inferiority;
    	    		var result_regression = result.result_regression;
					var result_o_text = result.result_o_text.replaceAll('//', '<div class="titleC" style="background-color:white;border-radius:4vw; margin-bottom:2vw;border: 1px solid #d2d2d2; padding-left: 4vw; padding-right: 4vw; padding-top: 4vw; text-align:justify;">').replaceAll('\\><strong>', 'class="title" onClick="showContent(this.id)"><strong>▸').replaceAll('\t', 'style="display : none; "').replaceAll('\n', '<br>');
					var result_c_text = result.result_c_text.replaceAll('//', '<div class="titleC" style="background-color:white;border-radius:4vw; margin-bottom:2vw;border: 1px solid #d2d2d2; padding-left: 4vw; padding-right: 4vw; padding-top: 4vw; text-align:justify;">').replaceAll('\\><strong>', 'class="title" onClick="showContent(this.id)"><strong>▸').replaceAll('\t', 'style="display : none; "').replaceAll('\n', '<br>');
					var result_c_text2 = result.result_c_text2.replaceAll('//', '<div class="titleC" style="background-color:white;border-radius:4vw; margin-bottom:2vw;border: 1px solid #d2d2d2; padding-left: 4vw; padding-right: 4vw; padding-top: 4vw; text-align:justify;">').replaceAll('\\><strong>', 'class="title" onClick="showContent(this.id)"><strong>▸').replaceAll('\t', 'style="display : none; "').replaceAll('\n', '<br>');
					var result_direction = result.result_direction.replaceAll('\n', '</p><p>');
					
					if(result.cate_seq === 1) {
    					result_aggressive = (result.result_aggressive / 9 * 100).toFixed(1);
        	    		result_social_anxiety = (result.result_social_anxiety / 12 * 100).toFixed(1);
        	    		result_depressed = (result.result_depressed / 18 * 100).toFixed(1);
        	    		result_avpd = (result.result_avpd / 8 * 100).toFixed(1);
        	    		result_self_esteem = (result.result_self_esteem / 29 * 100).toFixed(1);
        	    		result_emotional_instability = (result.result_emotional_instability / 24 * 100).toFixed(1);
        	    		result_deprivation = (result.result_deprivation / 13 * 100).toFixed(1);
        	    		result_inferiority = (result.result_inferiority / 16 * 100).toFixed(1);
        	    		result_regression = (result.result_regression / 11 * 100).toFixed(1);
    				}
					
					$('#result_o_text').text(result_o_text);
					/* $('#result_c_text').text(result_c_text); */
					document.getElementById('result_o_text').innerHTML = result_o_text;
					document.getElementById('result_c_text').innerHTML = result_c_text + result_c_text2;
					document.getElementById('result_direction').innerHTML = result_direction;
					/* $('result_direction').text(result_direction); */
					
					document.getElementById('resetChart').innerHTML = ""; 
					document.getElementById('resetChart').innerHTML = "<canvas id='myChart' width='100%' height='130%' margin-left='15px' padding-left='25px'></canvas>"; 
					
    	            var context = document.getElementById('myChart').getContext('2d');
    	            var myChart = new Chart(context, {
    	                type: 'bar', // 차트의 형태
    	                data: { // 차트에 들어갈 데이터
    	                    labels: [
    	                        //x 축
    	                        '공격성','사회불안','우울','대인회피','자존감','정서불안','애정결핍','열등감','퇴행'
    	                    ],
    	                    datasets: [
    	                        { //데이터
    	                            label: '심리검사 결과(%)', //차트 제목
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
    	                                'rgba(255, 159, 64, 0.2)',
    	                                'rgba(255, 99, 132, 0.2)',
    	                                'rgba(54, 162, 235, 0.2)',
    	                                'rgba(255, 206, 86, 0.2)'
    	                            ],
    	                            borderColor: [
    	                                //경계선 색상
    	                                'rgba(255, 99, 132, 1)',
    	                                'rgba(54, 162, 235, 1)',
    	                                'rgba(255, 206, 86, 1)',
    	                                'rgba(75, 192, 192, 1)', 
    	                                'rgba(153, 102, 255, 1)',
    	                                'rgba(255, 159, 64, 1)',
    	                                'rgba(255, 99, 132, 1)',
    	                                'rgba(54, 162, 235, 1)',
    	                                'rgba(255, 206, 86, 1)'
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
    	            						max: 100,
    	            						stepSize : 10,
    	            						fontSize : 14,
    	            						
    	            						}
    	                            }
    	                        ]
    	                    }
    	                }
    	            });
    	            	
    	            }
    	    		
    	    		
    	    		
    	    		
    			
    			,error : function(){
    				alert("error");
    			}
    		});
    	}
    	
    	// p태그에 따른 컨텐츠 더보기 함수
    	function showContent(clicked_id) {
    		console.log(clicked_id);
    		var names = ["window", "door", "roof", "wall", "c_smoke", "chimney", "sun", "aggressive", "anxiety", "depressed", "avpd", "esteem", "instability", "deprivation", "inferiority", "regression"];
    		var title = $("#"+clicked_id+">strong").text();
    		for(var i = 0; i < names.length; i++) {
    			if(clicked_id == names[i]) {
    				if( $("#"+names[i]+"C").css("display") == "none" ) {
    					$("#"+names[i]+"C").css("display", "inline-block");
    					$("#"+clicked_id+">strong").text(title.replace("▸", "▾"));
    					$("#"+names[i]+"C").parent().css("padding-bottom", "4vw");
    				} else {
    					$("#"+names[i]+"C").css("display", "none");
    					$("#"+clicked_id+">strong").text(title.replace("▾", "▸"));
    					$("#"+names[i]+"C").parent().css("padding-bottom", "0");
    				}
    			}
    		}
    	}
    	
       </script>
	
</body>
</html>
