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
    <link href="${contextPath}/resources/css/admin.css" rel="stylesheet" />

</head>
<body class="nav-fixed">
        <div id="layoutSidenav">
        	<jsp:include page="../common/adminHeader.jsp"></jsp:include>
            
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            Dashboard
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mt-4">
                                        <div class="input-group input-group-joined border-0" style="width: 16.5rem">
                                            <span class="input-group-text"><i class="text-primary" data-feather="calendar"></i></span>
                                            <input class="form-control ps-0 pointer" id="litepickerRangePlugin" placeholder="Select date range..." />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-n10">
                        <div class="row">
                            
                        <!-- Example Charts for Dashboard Demo-->
                        
                        <div class="row">
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        월별 회원 가입자 수
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-area"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div class="card-header">
                                        유형별 검사 횟수
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar"><canvas id="myBarChart" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example DataTable for Dashboard Demo-->
                            <div class="row">
                                <div class="col-lg-6">
                                    <!-- Bar chart example-->
                                    <div class="card h-100">
                                        <div class="card-header">자녀의 연령</div>
                                        <div class="card-body d-flex flex-column justify-content-center">
                                            <div class="chart-bar"><canvas id="myBarChart2" width="100%" height="30"></canvas></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <!-- Pie chart example-->
                                    <div class="card h-100">
                                        <div class="card-header">지역 분포</div>
                                        <div class="card-body">
                                            <div class="chart-pie mb-4"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                            <div class="list-group list-group-flush">
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-blue"></i>
                                                        <!-- 여기에 지역이름 -->
                                                        광주
                                                    </div>
                                                    <div class="fw-500 text-dark">55%</div>
                                                </div>
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-purple"></i>
                                                        <!-- 여기도 -->
                                                        서울
                                                    </div>
                                                    <div class="fw-500 text-dark">15%</div>
                                                </div>
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-green"></i>
                                                        <!-- 여기도 -->
                                                        부산
                                                    </div>
                                                    <div class="fw-500 text-dark">30%</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                </main>
            </div>
        </div>
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/datatables/datatables-simple-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/litepicker.js"></script>
        
    <script src="${contextPath}/resources/js/chart-pie-demo.js"></script>

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
