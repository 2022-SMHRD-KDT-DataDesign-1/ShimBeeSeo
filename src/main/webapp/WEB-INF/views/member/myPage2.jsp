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
 <script>
	 $(function() {
		  var x = 0;
		  var tabx = 0;
		  var xx = 0;
		  var limit = $("table").width() - $(".cc").width();
		  $("table").bind('touchstart', function(e) {
		    var event = e.originalEvent;
		    x = event.touches[0].screenX;
		    tabx = $("table").css("transform").replace(/[^0-9\-.,]/g, '').split(',')[4];
		  });
		  $("table").bind('touchmove', function(e) {
		    var event = e.originalEvent;
		    xx = parseInt(tabx) + parseInt(event.touches[0].screenX - x);
		    $("table").css("transform", "translate(" + xx + "px, 0px)");
		    event.preventDefault();
		  });
		  $("table").bind('touchend', function(e) {
		    if ((xx > 0) && (tabx <= 0)) {
		      $("table").css("transform", "translate(0px, 0px)");
		    }
		    if (Math.abs(xx) > limit) {
		      $("table").css("transform", "translate(" + -limit + "px, 0px)");
		    }
		  });
	
		});
 </script>   
    
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
    	<div class="container">
    		<div class="hh"><strong>마이페이지</strong></div>
    		<div class="col-lg-8 col-12" style="display:flex">
    			<div style="display:flex; height: 100px;"><i class="bi bi-person-fill"></i><strong>양진영</strong>님, 안녕하세요!</div>
    		</div>
    		<div style="display: flex;">
    			<div style="text-align: center; display: flex;"><i class="bi bi-file-earmark-check"><br>검사내역</i></div>
    			<div style="text-align: center; display: flex;"><i class="bi bi-file-earmark-check"><br>검사내역</i></div>
    			<div style="text-align: center; display: flex;"><i class="bi bi-file-earmark-check"><br>검사내역</i></div>
    		</div>
        	<div class="row">
            	<div class="col-lg-8 col-12">
                	<div class="pb-5 mb-5">
                   		<!-- <table class="table table-bordered border-dark border border-2" style="width: 1000px;" >
								<th></th>
								<th>공격성</th>
								<th>사회불안</th>
								<th>우울</th>
								<th>대인회피</th>
								<th>자존감</th>
								<th>정서불안</th>
								<th>애정결핍</th>
								<th>열등감</th>
								<th>퇴행</th>
							<tr>
								<td style="width:15%">마지막 검사결과</td>
								<td>30</td>
								<td>40</td>
								<td>50</td>
								<td>30</td>
								<td>20</td>
								<td>45</td>
								<td>35</td>
								<td>15</td>
								<td>10</td>
							</tr> 
							<tr>
								<td>직전 검사결과</td>
								<td>40</td>
								<td>50</td>
								<td>30</td>
								<td>20</td>
								<td>20</td>
								<td>45</td>
								<td>35</td>
								<td>15</td>
								<td>10</td>
							</tr>
							<tr>
								<td>증감치</td>
								<td>10</td>
								<td>10</td>
								<td>-20</td>
								<td>-10</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr> 
						</table> -->
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
		
<!-- Chart 내용 Javascript -->

        
<script type="text/javascript">
   /*      
	$(document).ready(function() {
    	loadResult();	
    }); */
        
/* JSON형태로 사용자 검사 결과 받아오는 함수 */
	/* function loadResult() {
    	$.ajax({
    		url : "resultList.do",
    		type : "get",
    		dataType : "json",
    		success : makeSelect, /* callback 함수 요청되고나서 실행하는 함수*/
    	/* 	error : function() {
    		alert("loadResult error");
    		}
    		});
    	}
         */
    	/* 셀렉트에 사용자가 실시했던 검사날짜에 따른 option 추가 */
        /* function makeSelect(data){
        	var listHtml = "<option>--검사 날짜를 선택해주세요--</option>";
			console.log("makeselect실행완료")
        	$.each(data,function(index, obj){
        		listHtml+="<option value='"+(obj.result_date)+"'>"+(obj.result_date)+"</option>";
        		$("#dateSelect").html(listHtml);
        	});
        	  	
        };
        
    	function changeDate(){
    		$.ajax({
    			url : "resultList.do",
    			type:"get",
    			dataType : "json",
    			success : function(result){
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
					var result_o_text = result[index].result_o_text;
					var result_direction = result[index].result_direction;
					
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
					
					$('#result_o_text').text(result_o_text);
					$('result_direction').text(result_direction);
					
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
    	                        } *//* ,
    	                        {
    	                            label: 'test2',
    	                            fill: false,
    	                            data: [
    	                                8, 34, 12, 24
    	                            ],
    	                            backgroundColor: 'rgb(157, 109, 12)',
    	                            borderColor: 'rgb(157, 109, 12)'
    	                        } */
    	       /*              ]
    	                },
    	                options: {
    	                    scales: {
    	                        yAxes: [
    	                            {
    	                            	ticks: { */
    	                            		/* y축 설정 변경 */
    	       /*      						min: 0,
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
    	} */
</script>
</body>
</html>