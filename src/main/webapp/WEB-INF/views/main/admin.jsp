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
        <nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white" id="sidenavAccordion">
            <!-- Sidenav Toggle Button-->
            <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
            <!-- Navbar Brand-->
            <!-- * * Tip * * You can use text or an image for your navbar brand.-->
            <!-- * * * * * * When using an image, we recommend the SVG format.-->
            <!-- * * * * * * Dimensions: Maximum height: 32px, maximum width: 240px-->
            <a class="navbar-brand pe-3 ps-4 ps-lg-2" href="index.html">심비서</a>
            <!-- Navbar Search Input-->
            <!-- * * Note: * * Visible only on and above the lg breakpoint-->
            <form class="form-inline me-auto d-none d-lg-block me-3">
                <div class="input-group input-group-joined input-group-solid">
                    <input class="form-control pe-0" type="search" placeholder="Search" aria-label="Search" />
                    <div class="input-group-text"><i data-feather="search"></i></div>
                </div>
            </form>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sidenav shadow-right sidenav-light">
                    <div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            <!-- Sidenav Accordion (Dashboard)-->
                            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseDashboards" aria-expanded="false" aria-controls="collapseDashboards">
                                <a class="nav-link" href="dashboard-1.html"> Dashboards</a>
                            </a>
                            <!-- Sidenav Accordion (Applications)-->
                            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseApps" aria-expanded="false" aria-controls="collapseDashboards">
                                <a class="nav-link" href="user-management-list.html">Users List</a>
                            </a>
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
                                    <div id="testCate" class="card-header">
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
                                        <div id="kidsAge" class="card-header">자녀의 연령</div>
                                        <div class="card-body d-flex flex-column justify-content-center">
                                            <div class="chart-bar"><canvas id="myBarChart2" width="100%" height="30"></canvas></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <!-- Pie chart example-->
                                    <div class="card h-100">
                                        <div id="region" class="card-header">지역 분포</div>
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
    <%-- <script src="${contextPath}/resources/js/scripts.js"></script> --%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/chart-area-demo.js"></script>
    <script src="${contextPath}/resources/js/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <%-- <script src="${contextPath}/resources/js/datatables/datatables-simple-demo.js"></script> --%>
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <%-- <script src="${contextPath}/resources/js/litepicker.js"></script> --%>
        
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
    
    /* $(document).ready(function() {
    		loadResult();	
    		}); */
    		
    		function number_format(number, decimals, dec_point, thousands_sep) {
    		    // *     example: number_format(1234.56, 2, ',', ' ');
    		    // *     return: '1 234,56'
    		    number = (number + "").replace(",", "").replace(" ", "");
    		    var n = !isFinite(+number) ? 0 : +number,
    		        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    		        sep = typeof thousands_sep === "undefined" ? "," : thousands_sep,
    		        dec = typeof dec_point === "undefined" ? "." : dec_point,
    		        s = "",
    		        toFixedFix = function(n, prec) {
    		            var k = Math.pow(10, prec);
    		            return "" + Math.round(n * k) / k;
    		        };
    		    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    		    s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
    		    if (s[0].length > 3) {
    		        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    		    }
    		    if ((s[1] || "").length < prec) {
    		        s[1] = s[1] || "";
    		        s[1] += new Array(prec - s[1].length + 1).join("0");
    		    }
    		    return s.join(dec);
    		}

    		// Area Chart Example

        
        /* JSON형태로 사용자 검사 결과 받아오는 함수 */
    	function loadResult() {
    		$.ajax({
    			url : "joinPerMonth.do",
    			type : "get",
    			dataType : "json",
    			success : function(result){
    				/* var month = result.month;
    				var number = result.number; */
    				
    				var monthArr = [];
    				var numberArr = [];
    				for(var i = 0; i < result.length; i++) {
    					monthArr.push(result[i].month);
    					numberArr.push(result[i].number);
    				}
    				var ctx = document.getElementById('joinPerMonth');
    				
    				var myLineChart = new Chart(ctx, {
    				    type: "line",
    				    data: {
    				        labels: [
    				            monthArr
    				        ],
    				        datasets: [{
    				            label: "회원 수",
    				            lineTension: 0.3,
    				            backgroundColor: "rgba(0, 97, 242, 0.05)",
    				            borderColor: "rgba(0, 97, 242, 1)",
    				            pointRadius: 3,
    				            pointBackgroundColor: "rgba(0, 97, 242, 1)",
    				            pointBorderColor: "rgba(0, 97, 242, 1)",
    				            pointHoverRadius: 3,
    				            pointHoverBackgroundColor: "rgba(0, 97, 242, 1)",
    				            pointHoverBorderColor: "rgba(0, 97, 242, 1)",
    				            pointHitRadius: 10,
    				            pointBorderWidth: 2,
    				            data: [
    				                numberArr
    				            ]
    				        }]
    				    },
    				    options: {
    				        maintainAspectRatio: false,
    				        layout: {
    				            padding: {
    				                left: 10,
    				                right: 25,
    				                top: 25,
    				                bottom: 0
    				            }
    				        },
    				        scales: {
    				            xAxes: [{
    				                time: {
    				                    unit: "date"
    				                },
    				                gridLines: {
    				                    display: false,
    				                    drawBorder: false
    				                },
    				                ticks: {
    				                    maxTicksLimit: 7
    				                }
    				            }],
    				            yAxes: [{
    				                ticks: {
    				                    maxTicksLimit: 5,
    				                    padding: 10,
    				                    // Include a dollar sign in the ticks
    				                    callback: function(value, index, values) {
    				                        return  number_format(value);
    				                    }
    				                },
    				                gridLines: {
    				                    color: "rgb(234, 236, 244)",
    				                    zeroLineColor: "rgb(234, 236, 244)",
    				                    drawBorder: false,
    				                    borderDash: [2],
    				                    zeroLineBorderDash: [2]
    				                }
    				            }]
    				        },
    				        legend: {
    				            display: false
    				        },
    				        tooltips: {
    				            backgroundColor: "rgb(255,255,255)",
    				            bodyFontColor: "#858796",
    				            titleMarginBottom: 10,
    				            titleFontColor: "#6e707e",
    				            titleFontSize: 14,
    				            borderColor: "#dddfeb",
    				            borderWidth: 1,
    				            xPadding: 15,
    				            yPadding: 15,
    				            displayColors: false,
    				            intersect: false,
    				            mode: "index",
    				            caretPadding: 10,
    				            callbacks: {
    				                label: function(tooltipItem, chart) {
    				                    var datasetLabel =
    				                        chart.datasets[tooltipItem.datasetIndex].label || "";
    				                    return datasetLabel + number_format(tooltipItem.yLabel);
    				                }
    				            }
    				        }
    				    }
    				});

    			}, /* callback 함수 요청되고나서 실행하는 함수*/
    			error : function() {
    				alert("loadResult error");
    			}
    		});
    	}
        
    	</script>
	
</body>
</html>
