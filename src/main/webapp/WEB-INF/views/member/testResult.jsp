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

            	<div class="col-lg-8 col-12">
                	<div class="pb-5 mb-5">
                    	<div class="section-title-wrap mb-4">
                        	<h4 class="section-title text-center">검사 결과</h4>
                       	</div>
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
            		<div class="pb-5 mb-5">
                		<div class="section-title-wrap mb-4">
                     		<h4 class="section-title text-center" style="font-size:30px">검사 내용</h4>
                    	</div>
                            
			<!-- test용 시작-->
    					<div class="testimonial-item bg-light rounded p-5">
                			<p style="font-size:25px" id="result_o_text">
                				공격성: 공격성은 낮은 수준으로 해당 특징에 대해 거의 경험이 없거나 매우 제한적인 양상을 보입니다.<br>
                				<br>사회불안: 아동은 사회적인 요소에 대한 불안이 거의 없는 것으로 관찰될 수 있습니다.<br>
                				<br>우울: 우울은 낮은 수준으로 나타나며, 아동은 일상적인 감정 상태에서 가벼운 우울감을 경험할 수 있습니다.<br>
                				<br>대인회피: 아동은 대인과의 상호작용을 피하거나 피하는 경향이 거의 없습니다.<br>
                				<br>열등감: 자신을 자주 비판하고, 자신의 능력과 가치를 의심하는 경향이 있습니다.<br>
                				<br>자존감: 어려운 상황에서는 자신을 도전하기보다는 회피하거나 위축되는 경향이 있습니다.
                			</p>
						</div>
	    				<div class="testimonial-item bg-light rounded p-5">
							<p id="result_c_text" style="font-size:25px"> </p>
	                    </div>
               		</div>
           		</div>
           	<div class="col-lg-8 col-12 mx-auto">
           		<div class="pb-5 mb-5">
                	<div class="section-title-wrap mb-4">
                    	<!-- <h4 class="section-title text-center">지도 방향</h4>
                    	<p>공격성과 사회불안이 높은 아이에 대한 지도교육 방향은 다양한 전략과 접근법을 조합하여 개별적인 상황에 맞게 결정되어야 합니다. 아래의 지도교육 방향은 참고할 수 있는 일반적인 가이드라인입니다.
						<br>
						1.개별 평가와 개별화된 계획 수립: 아이의 공격성과 사회불안의 원인을 파악하기 위해 개별 평가가 필요합니다. 전문가인 심리학자, 교사, 상담사 등과 협력하여 아이의 강점, 약점, 관심사, 학습 스타일 등을 평가하고 개별화된 교육 계획을 수립해야 합니다.
						<br>
						2.감정 조절 및 자기조절 교육: 아이에게 감정을 인식하고 조절하는 방법을 가르쳐야 합니다. 감정을 인식하고 표현할 수 있는 활동이나 도구를 활용하여 아이가 감정을 인지하고 조절할 수 있도록 지원해야 합니다. 사회적 역량을 강화하기 위해 동료와의 상호작용을 장려하고, 사회적 문제 해결 능력을 향상시킬 수 있는 시뮬레이션 게임 등을 활용할 수도 있습니다.
						<br>
						3.대인 관계 기술 훈련: 아이가 적절한 대인 관계 기술을 습득하도록 도와야 합니다. 이를 위해 상호작용, 대화, 협력, 타인의 감정 이해 등을 강화하는 프로그램이나 활동을 제공할 수 있습니다. 집단 활동, 롤플레이, 사회적 기술을 강화하는 연습 등을 포함시킬 수 있습니다.
						<br>
						4.문제 해결 및 대처 전략 제공: 아이에게 문제 해결 및 대처 전략을 가르쳐야 합니다. 아이가 문제 상황에 직면했을 때 적절한 대안적인 행동 및 전략을 습득할 수 있도록 도와줍니다. 사회적 문제 상황에 대한 시뮬레이션, 롤플레이, 문제 해결 게임 등을 활용할 수 있습니다.
						<br>
						5.안정적인 환경 제공: 아이가 안정감을 느낄 수 있는 환경을 조성해야 합니다. 일정한 루틴, 구조, 예측 가능한 규칙을 제공하여 안정성과 안전성을 확보합니다. 또한, 아이가 편안하게 표현하고 이해받을 수 있는 환경을 조성하여 자신의 감정을 표현할 수 있도록 지원합니다.
						<br>
						6.보호자 교육 및 지원: 아이의 보호자에게 지원과 교육이 필요합니다. 아동의 공격성과 사회불안에 대한 이해를 높이고, 아이의 교육을 위한 적절한 전략과 기술을 습득할 수 있도록 상담 및 교육 프로그램을 제공하는 것이 중요합니다. 보호자와 교사, 상담사 등의 협력과 연계를 강화하여 아이에게 일관된 지원을 제공할 수 있도록 합니다.
						<br>
						이러한 지도교육 방향은 전문가의 도움과 함께 개별 아이에게 맞추어 적용되어야 하며, 학교와 가정의 협력과 지원이 필요합니다.</p> -->
                    </div>
                            
    				<div class="testimonial-item bg-light rounded p-5">
						<p id="result_direction" style="font-size:25px;">
							아이가 안전하게 집 안에서 활동할 수 있는 환경을 지니고 있는 것으로 보이며
							아이가 실내 공간에서 자연의 햇빛과 신선한 공기를 받을 수 있는 환경을 가지고 있는 것으로 보입니다.<br>
							<br>또한 부모님은 안정적인 환경을 제공하고 아이를 지원해주는 중요한 역할을 잘 수행하고 있고
							안정된 집에서 성장하고 생활하고 있는 것으로 보입니다.<br>
							<br>위로 보아 부모님은 아이의 안전과 보호, 안정적인 환경 제공하고 있고 안전한 집 안에서 안정된
							양육 환경을 제공하여 아이가 자연과 바깥세계와의 접촉을 적절히 유지 할 수 있도록 도와주어야 합니다.
							
						</p>
                    </div>


               </div>
         	</div>



            <div class="col-lg-12 col-12">
            	<div class="section-title-wrap mb-5">
                	<h4 class="section-title">이 콘텐츠는 어떠세요?</h4>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
            	<div class="team-thumb bg-white shadow-lg">
					
 					<h4 class="mb-2">1번</h4> <br>
                	<div class="team-info">
						<img src="${contextPath}/resources/img/oh.png" style="width: 100%; height: auto;" class="verified-image img-fluid" alt="">
      				</div>
      			</div>
           	</div>

        	<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
            	<div class="team-thumb bg-white shadow-lg">
                	<!-- <img src="images/profile/handsome-asian-man-listening-music-through-headphones.jpg"
                    	class="about-image img-fluid" alt=""> -->

                	<div class="team-info">
                		<h4 class="mb-2">2번</h4> <br>
                    	<img src="${contextPath}/resources/img/why.png" style="width: 100%; height: auto;" class="verified-image img-fluid" alt="">
                                <!-- <span class="badge">Creative</span>
                                <span class="badge">Design</span> -->
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
		
		<!-- Chart 내용 Javascript -->

        
        <script type="text/javascript">
        
    	$(document).ready(function() {
    		loadResult();	
    		});
        
        /* JSON형태로 사용자 검사 결과 받아오는 함수 */
    	function loadResult() {
    		$.ajax({
    			url :  "testResultOne.do" ,
    			type : "get",
    			dataType : "json",
    			success : getResult, /* callback 함수 요청되고나서 실행하는 함수*/
    			error : function() {
    				alert("loadResult error");
    			}
    		});
    	}
        
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
					var result_o_text = result.result_o_text.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_c_text = result.result_c_text.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_c_text2 = result.result_c_text2.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_direction = result.result_direction.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					
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
					document.getElementById('resetChart').innerHTML = "<canvas id='myChart'></canvas>"; 
					
    	            var context = document.getElementById('myChart').getContext('2d');
    	            var myChart = new Chart(context, {
    	                type: 'horizontalBar', // 차트의 형태
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
    	
    	

    		

        
        
        </script>
	
</body>
</html>
