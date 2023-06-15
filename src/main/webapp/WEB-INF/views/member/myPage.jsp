<%@page import="kr.board.entity.User_Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보^오^</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="${contextPath}/resources/img/favicon.icon" rel="icon">

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


</head>
<body>
	<div class="container-xxl bg-white p-0">
		<jsp:include page="../common/header.jsp"></jsp:include>


		<div class=".d-md-block gap-2" style="margin-top: 6vw;">
			<div style="float: left; width: 50%;">
				<button id="date" style="width: 100%; height: 10vw; border-radius: 5vw; border: none; background: #fff5f3; font-weight : 550;"
					onclick="viewDate()">날짜별 검사 결과</button>
			</div>
			<div style="float: left; width: 50%;">
				<button id="emtion" style="width: 100%; height: 10vw; border-radius: 5vw; border: none; background: #fff5f3; font-weight : 550;"
					onclick="viewEmotion()">감정별 검사 결과</button>
			</div>
		</div>
		<!-- 날짜별 검사 내용 시작 -->

		<div class="container" id="dateView" style="display: block;">
			<div class="row">

				<div class="col-lg-8 col-12">
					<div class="pb-5 mb-5">
						<div class="section-title-wrap mb-4" style="margin-top: 6vw;">
							<h1 class="section-title text-center">날짜별 검사 결과</h1>
						</div>
						<div class="section-title-wrap mb-4">
							<h4 class="section-title text-center">감정 그래프</h4>
						</div>

						<input type="hidden" value="${mvo.user_id}" id="idCheck">
						<!-- 날짜선택 -->
						<label for="dateSelect">검사 날짜 선택:</label> <select name="date"
							id="dateSelect" onchange="changeDate()">
							<option value="">--검사 날짜를 선택해주세요--</option>
							<option id="result_date"></option>

						</select>




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
					<h4 class="section-title text-center">검사 결과</h4>
						<div class="testimonial-item bg-light rounded p-5">
							<p class="fs-5" id="result_c_text"></p>
						</div>
						<!-- test용 시작-->
						<div class="testimonial-item bg-light rounded p-5">
							<p class="fs-5" id="result_o_text"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-12 mx-auto">
					<div class="pb-5 mb-5">
						<div class="section-title-wrap mb-4">
							<h4 class="section-title text-center">지도 방향</h4>
						</div>

						<div class="testimonial-item bg-light rounded p-5">

							<p class="fs-5" id="result_direction"></p>
						</div>


					</div>
				</div>

			</div>



			<div class="col-lg-12 col-12">
				<div class="section-title-wrap mb-5">
					<h4 class="section-title">이런 콘텐츠는 어때요?</h4>
				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">

					<h4 class="mb-2">1번</h4>
					<br>
					<div class="team-info">

						<img src="${contextPath}/resources/img/oh.png"
							style="width: 100%; height: auto;"
							class="verified-image img-fluid" alt="">


					</div>


				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">

					<div class="team-info">
						<h4 class="mb-2">2번</h4>
						<br> <img src="${contextPath}/resources/img/why.png"
							style="width: 100%; height: auto;"
							class="verified-image img-fluid" alt="">
					</div>

				</div>
			</div>

		</div>
		<!-- 날짜별 검사 내용 끝 -->


		<!-- 감정별 검사 내용 시작 -->

		<div class="container" id="emotionView" style="display: none;">
			<div class="row">

				<div class="col-lg-8 col-12">
					<div class="pb-5 mb-5">
						<div class="section-title-wrap mb-4" style="margin-top: 6vw;">
							<h1 class="section-title text-center">감정별 검사 결과</h1>
						</div>
						<div class="section-title-wrap mb-4">
							<h4 class="section-title text-center">감정 그래프</h4>
						</div>

						<input type="hidden" value="${mvo.user_id}" id="e_idCheck">
						<!-- 날짜선택 -->
						<label for="emotionSelect">감정 선택:</label> 
						<select name="emotion" id="emotionSelect" onchange="changeEmotion()">
							<option value="">--감정을 선택해주세요--</option>
							<option value="result_aggressive" id="e_result_aggressive">공격성</option>
							<option value="result_social_anxiety" id="e_result_social_anxiety">사회불안</option>
							<option value="result_depressed" id="e_result_depressed">우울</option>
							<option value="result_avpd" id="e_result_avpd">대인회피</option>
							<option value="result_self_esteem" id="e_result_self_esteem">자존감</option>
							<option value="result_emotional_instability"
								id="e_result_emotional_instability">정서불안</option>
							<option value="result_deprivation" id="e_result_deprivation">애정결핍</option>
							<option value="result_inferiority" id="e_result_inferiority">열등감</option>
							<option value="result_regression" id="e_result_regression">퇴행</option>
						</select>




						<div class="bg-light rounded">
							<div style="width: 100%; height: 100%;">

								<div id="e_resetChart">

									<!--차트가 그려질 부분-->
									<canvas id="e_myChart" width="300px" height="100%"
										margin-left="15px" padding-left="25px"></canvas>
								</div>




							</div>
						</div>

					</div>

				</div>


			</div>
			<div class="col-lg-12 col-12">
				<div class="section-title-wrap mb-5">
					<h4 class="section-title">이런 콘텐츠는 어때요?</h4>
				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">

					<h4 class="mb-2">1번</h4>
					<br>
					<div class="team-info">

						<img src="${contextPath}/resources/img/oh.png"
							style="width: 100%; height: auto;"
							class="verified-image img-fluid" alt="">


					</div>


				</div>
			</div>


			<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
				<div class="team-thumb bg-white shadow-lg">
					<!-- <img src="images/profile/handsome-asian-man-listening-music-through-headphones.jpg"
                                class="about-image img-fluid" alt=""> -->

					<div class="team-info">
						<h4 class="mb-2">2번</h4>
						<br> <img src="${contextPath}/resources/img/why.png"
							style="width: 100%; height: auto;"
							class="verified-image img-fluid" alt="">

						<!-- <span class="badge">Creative</span>

                                <span class="badge">Design</span> -->
					</div>

				</div>
			</div>

		</div>
		<!-- 감정별 검사 내용 끝 -->




		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
	<script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${contextPath}/resources/js/main.js"></script>

	<!-- Chart.js 불러오기 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

	<!-- Chart 내용 Javascript -->


	<script type="text/javascript">
        
    	$(document).ready(function() {
    		user_id = "${mvo.user_id}";
    		console.log(user_id);
    		loadResult(user_id);	
    		});
        
        /* JSON형태로 사용자 검사 결과 받아오는 함수 */
    	function loadResult(user_id) {
    		$.ajax({
    			url : "resultList.do/" + user_id,
    			type : "get",
    			dataType : "json",
    			success : makeSelect, /* callback 함수 요청되고나서 실행하는 함수*/
    			error : function() {
    				alert("검색된 검사 결과가 없습니다. 심리검사를 진행해주세요");
    			}
    		});
    	}
        
    	/* 셀렉트에 사용자가 실시했던 검사날짜에 따른 option 추가 */
        function makeSelect(data){
        	var listHtml = "<option>--검사 날짜를 선택해주세요--</option>";
			console.log("makeselect실행완료")
        	$.each(data,function(index, obj){
        		listHtml+="<option value='"+(obj.result_date)+"'>"+(obj.result_date)+"</option>";
        		$("#dateSelect").html(listHtml);
        	});
        	  	
        };
        
    	function changeDate(){
    		$.ajax({
    			url : "resultList.do/" + user_id,
    			type:"get",
    			dataType : "json",
    			success : function(result){
    				console.log(result);
    				var result_date= document.getElementById('dateSelect').value;
    				for (var i = 0 ; i< result.length ; i++ ){
    					var tf = result[i].result_date
    					if(result_date == tf){
    						index = i;
    					}
    				}
    				
    				var result_aggressive = result[index].result_aggressive;
    	    		var result_social_anxiety = result[index].result_social_anxiety;
    	    		var result_depressed = result[index].result_depressed;
    	    		var result_avpd = result[index].result_avpd;
    	    		var result_self_esteem = result[index].result_self_esteem;
    	    		var result_emotional_instability = result[index].result_emotional_instability;
    	    		var result_deprivation =result[index].result_deprivation;
    	    		var result_inferiority =result[index].result_inferiority;
    	    		var result_regression = result[index].result_regression;
					var result_o_text = result[index].result_o_text.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_c_text = result[index].result_c_text.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_c_text2 = result[index].result_c_text2.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					var result_direction = result[index].result_direction.replaceAll('\t', '</p><p>').replaceAll('\n', '</p><p>');
					
					if(result[index].cate_seq === 1) {
    					result_aggressive = (result[index].result_aggressive / 9 * 100).toFixed(1);
        	    		result_social_anxiety = (result[index].result_social_anxiety / 12 * 100).toFixed(1);
        	    		result_depressed = (result[index].result_depressed / 18 * 100).toFixed(1);
        	    		result_avpd = (result[index].result_avpd / 8 * 100).toFixed(1);
        	    		result_self_esteem = (result[index].result_self_esteem / 29 * 100).toFixed(1);
        	    		result_emotional_instability = (result[index].result_emotional_instability / 24 * 100).toFixed(1);
        	    		result_deprivation = (result[index].result_deprivation / 13 * 100).toFixed(1);
        	    		result_inferiority = (result[index].result_inferiority / 16 * 100).toFixed(1);
        	    		result_regression = (result[index].result_regression / 11 * 100).toFixed(1);
    				}


					
					/* $('#result_o_text').text(result_o_text);
					$('result_direction').text(result_direction); */
					document.getElementById('result_o_text').innerHTML = result_o_text;
					document.getElementById('result_c_text').innerHTML = result_c_text + result_c_text2;
					document.getElementById('result_direction').innerHTML = result_direction;
					document.getElementById('resetChart').innerHTML = ""; 
					document.getElementById('resetChart').innerHTML = "<canvas id='myChart' width='100%' height='100%' margin-left='15px' padding-left='25px'></canvas>"; 
					
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
    	
    	/* 날짜별 데이터 보기 */
    	function viewDate(){
    		console.log("viewDate잘됨");
    		$('#dateView').css('display','block');
    		$('#emotionView').css('display','none');
    	}
    	
    	/* 감정별 데이터 보기 */
		function viewEmotion(){
    		console.log("viewEmotion잘됨");
    		$('#emotionView').css('display','block');
    		$('#dateView').css('display','none');
		}
    		
/* 위쪽 날짜별 데이터 자바 스크립트 */
/* 아래쪽 감정별 데이터 자바 스크립트 */    

	       
	       
	       /* JSON형태로 사용자 검사 결과 받아오는 함수 */

    	/* 셀렉트에 사용자가 실시했던 검사날짜에 따른 option 추가 */

        
    	function changeEmotion(){
    		$.ajax({
    			url : "resultList.do/" + user_id,
    			type:"get",
    			dataType : "json",
    			success : function(result){
    				var emotion_Select= document.getElementById('emotionSelect').value;
    				console.log(result);
    				console.log(emotion_Select);
    				
    				console.log(result[1][emotion_Select]);
    				var date = [];
    				var emotion = [];

					for(var i = 0; i<result.length;i++){
						date.push(result[i].result_date);
						emotion.push(result[i][emotion_Select]);
					};
					
					console.log(date);
					console.log(emotion);

					document.getElementById('e_resetChart').innerHTML = ""; 
					document.getElementById('e_resetChart').innerHTML = "<canvas id='e_myChart' width='100%' height='100%' margin-left='15px' padding-left='25px'></canvas>"; 
					
    	            var e_context = document.getElementById('e_myChart').getContext('2d');
    	            var e_myChart = new Chart(e_context, {
    	                type: 'line', // 차트의 형태
    	                data: { // 차트에 들어갈 데이터
    	                    labels: 
    	                        //x 축
    	                        date
    	                    ,
    	                    datasets: [
    	                        { //데이터
    	                            label: emotion_Select, //차트 제목
    	                            fill: true, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
    	                            data: 
    	                            	emotion //x축 label에 대응되는 데이터 값
    	                            ,
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
    	            						max: 20,
    	            						stepSize : 2,
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
