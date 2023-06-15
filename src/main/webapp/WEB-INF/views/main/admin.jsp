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
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>

</head>
<body class="nav-fixed">
        <div id="layoutSidenav">

        	<jsp:include page="../common/adminHeader.jsp"></jsp:include>
            

            <div id="layoutSidenav_nav">
                <nav class="sidenav shadow-right sidenav-light">
                    <div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            <!-- Sidenav Accordion (Dashboard)-->
                                <a class="nav-link" href="dashboard-1.html"> Dashboards</a>
                                <a class="nav-link" href="user-management-list.html">Users List</a>
                            <!-- Sidenav Accordion (Applications)-->
                            <div class="collapse" id="collapseApps" data-bs-parent="#accordionSidenav">
                                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavAppsMenu">
                                    <!-- Nested Sidenav Accordion (Apps -> Knowledge Base)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#appsCollapseKnowledgeBase" aria-expanded="false" aria-controls="appsCollapseKnowledgeBase">
                                        Knowledge Base
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appsCollapseKnowledgeBase" data-bs-parent="#accordionSidenavAppsMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="knowledge-base-home-1.html">Home 1</a>
                                            <a class="nav-link" href="knowledge-base-home-2.html">Home 2</a>
                                            <a class="nav-link" href="knowledge-base-category.html">Category</a>
                                            <a class="nav-link" href="knowledge-base-article.html">Article</a>
                                        </nav>
                                    </div>
                                    <!-- Nested Sidenav Accordion (Apps -> User Management)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#appsCollapseUserManagement" aria-expanded="false" aria-controls="appsCollapseUserManagement">
                                        User Management
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appsCollapseUserManagement" data-bs-parent="#accordionSidenavAppsMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            
                                            <a class="nav-link" href="user-management-edit-user.html">Edit User</a>
                                            <a class="nav-link" href="user-management-add-user.html">Add User</a>
                                            <a class="nav-link" href="user-management-groups-list.html">Groups List</a>
                                            <a class="nav-link" href="user-management-org-details.html">Organization Details</a>
                                        </nav>
                                    </div>
                                    <!-- Nested Sidenav Accordion (Apps -> Posts Management)-->
                                    <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#appsCollapsePostsManagement" aria-expanded="false" aria-controls="appsCollapsePostsManagement">
                                        Posts Management
                                        <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="appsCollapsePostsManagement" data-bs-parent="#accordionSidenavAppsMenu">
                                        <nav class="sidenav-menu-nested nav">
                                            <a class="nav-link" href="blog-management-posts-list.html">Posts List</a>
                                            <a class="nav-link" href="blog-management-create-post.html">Create Post</a>
                                            <a class="nav-link" href="blog-management-edit-post.html">Edit Post</a>
                                            <a class="nav-link" href="blog-management-posts-admin.html">Posts Admin</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
            </div>
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
                                        <div class="chart-area"><canvas id="joinPerMonth" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 mb-4">
                                <div class="card card-header-actions h-100">
                                    <div id="myBarChart" class="card-header">
                                        유형별 검사 횟수
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar"><canvas id="countCate" width="100%" height="30"></canvas></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Example DataTable for Dashboard Demo-->
                            <div class="row">
                                <div class="col-lg-6">
                                    <!-- Bar chart example-->
                                    <div class="card h-100">
                                        <div id="myBarChart2" class="card-header">자녀의 연령</div>
                                        <div class="card-body d-flex flex-column justify-content-center">
                                            <div class="chart-bar"><canvas id="kidsAge" width="100%" height="30"></canvas></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <!-- Pie chart example-->
                                    <div class="card h-100">
                                        <div id="myPieChart" class="card-header">지역 분포</div>
                                        <div class="card-body">
                                            <div class="chart-pie mb-4"><canvas id="region" width="100%" height="50"></canvas></div>
                                            <!-- <div class="list-group list-group-flush">
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-blue"></i>
                                                        광주
                                                    </div>
                                                    <div class="fw-500 text-dark">55%</div>
                                                </div>
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-purple"></i>
                                                        서울
                                                    </div>
                                                    <div class="fw-500 text-dark">15%</div>
                                                </div>
                                                <div class="list-group-item d-flex align-items-center justify-content-between small px-0 py-2">
                                                    <div class="me-3">
                                                        <i class="fas fa-circle fa-sm me-1 text-green"></i>
                                                        부산
                                                    </div>
                                                    <div class="fw-500 text-dark">30%</div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                    <div style="height: 50px"></div>
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
    
    <script type="text/javascript">
    
    
        
    </script>
	
</body>
</html>
