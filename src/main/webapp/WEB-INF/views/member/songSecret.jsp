<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Template</title>
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
	
	<div style="width: 900px; height: 900px;">
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

	<div>
		<button id="flask_Test" onclick="flasktest()">Flask 테스트</button>
	
	</div>
	
	
	<!-- 본문 내용 끝 -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	
	    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	
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
                            label: 'test1', //차트 제목
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
        
		<script type="text/javascript">
		var testword = "너는 누구니????";
		var prompt = "";
		var cnt = 0;
		var inputText = "";
		var keyword = inputText.split(",");
		prompt += "HTP검사중에 집그림 검사를 시작할거야 대상은 8세 미만의 아동이야\n";
		for(var i = 0 ; i < keyword.length-1; i++){
			prompt+=cnt+"."+ keyword[i] + "이 존재함 \n";
			cnt++;
		}
		prompt += "위 검사를 토대로 검사 결과를 해석해줘 결과는 자녀의 부모님에게 설명하는 것 처럼 설명해줘 \n 추가로 위 검사 결과를 바탕으로 아이의 양육방식에 대하여 부모님의 관점으로 10가지 말해줘";

		function flasktest (){
			$.ajax({
				url : "http://localhost:5000/chatbot",
				Type : "get",
				data : {"message" : testword},
				dataType : "json",
				contentType: 'application/json; charset=utf-8',
				success : function (chatbot_response){
					console.log(chatbot_response)
				},
				error : function (){
					console.log("flask에서 아무고토 못받음")
				}
			})
		};
		</script>
	 
	
	    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
	
</body>
</html>
