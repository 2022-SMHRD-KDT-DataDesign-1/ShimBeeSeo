<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
	    <meta charset="UTF-8">
		<title>Template</title>
	  	<meta name="viewport" content="width=device-width, initial-scale=1">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	  	<meta content="" name="keywords">
	    <meta content="" name="description">
	    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	    <link href="${contextPath}/resources/css/admin.css" rel="stylesheet" />
	    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
	    
	    <script type="text/javascript">
	    
	    $(document).ready(function(){
  		  // HTML이 다 로딩되고 작동하는 함수
  		  loadList();
  	  });
  
  
	  function loadList(){
		  // BoardController에서 게시글 전체목록을 가져오는 기능
		  // JavaScript에서 객체 표현법 {key:value} -> json
		  $.ajax({
			  url : "board/all",
			  type : "get",
			  dataType : "json",
			  success : makeView,
			  error : function(){ alert("error"); }
		  });
	  }
	                           //           0              1         2
	  function makeView(data){ // data = [{title="하하"}, {     }, {     }]
		  console.log(data);
		  var listHtml = "<table id='datatablesSimple'>";
		  listHtml += "<thead>"
		  listHtml += "<tr>";
		  listHtml += "<th>아이디</th>";
		  listHtml += "<th>이름</th>";
		  listHtml += "<th>자녀이름</th>";
		  listHtml += "<th>자녀의 생년월일</th>";
		  listHtml += "<th>자녀와의 관계</th>";
		  listHtml += "<th>주소</th>";
		  listHtml += "<th>가입일</th>";
		  listHtml += "<th></th>";
		  listHtml += "</tr>";
		  listHtml += "</thead>"
		  
		  listHtml += "<tfoot>"
		  listHtml += "<tr>";
		  listHtml += "<th>아이디</th>";
		  listHtml += "<th>이름</th>";
		  listHtml += "<th>자녀이름</th>";
		  listHtml += "<th>자녀의 생년월일</th>";
		  listHtml += "<th>자녀와의 관계</th>";
		  listHtml += "<th>주소</th>";
		  listHtml += "<th>가입일</th>";
		  listHtml += "<th></th>";
		  listHtml += "</tr>";
		  listHtml += "</tfoot>";
		  
		  listHtml += "<tbody>"
		  
		  // 반복문을 통해 게시글을 만들어주는 부분 (main부분)
		  $.each(data, function(index, obj){
			  listHtml += "<tr>";
			  listHtml += "<td>" + <div class="d-flex align-items-center"> (index + 1) + "</td>";
			  listHtml += "<td id='t"+obj.idx+"'><a href='javascript:goContent("+obj.idx+")'>" + obj.title + "</a></td>";
			  listHtml += "<td>" + obj.writer + "</td>";
			  listHtml += "<td>" + obj.indate + "</td>";
			  listHtml += "<td>" + obj.count + "</td>";
			  listHtml += "</tr>";
			  
		listHtml += "</td></tr>";
		<td>
        
            ${mvo.user_id}
        </div>
    </td>
    <td>${mvo.user_name}</td>
    <td>${mvo.user_childname}</td>
    <td>${mvo.user_childbdate}</td>
    <td>${mvo.user_relation}</span></td>
    <td>${mvo.user_address}</td>
    <td>${mvo.user_joindate}</td>
    <td>
        <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
        <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
    </td>
			  
		  });
		  	listHtml += "</tbody>";
			listHtml += "</table>";
		  
		  $("#view").html(listHtml);
		  goList();
		  
	};
	</script>
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
            <!-- Navbar Items-->
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sidenav shadow-right sidenav-light">
                    <div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            <a class="nav-link" href="admin.do">
                                Dashboards
                            </a>
                            <a class="nav-link" href="#">Users List</a>
                            <a class="nav-link" href="adminMemberData.do">Users Data</a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            회원목록
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card">
                            <div class="card-body datatable-wrapper no-header datatable-container">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>자녀이름</th>
                                            <th>자녀의 생년월일</th>
                                            <th>자녀와의 관계</th>
                                            <th>주소</th>
                                            <th>가입일</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>자녀이름</th>
                                            <th>자녀의 생년월일</th>
                                            <th>자녀와의 관계</th>
                                            <th>주소</th>
                                            <th>가입일</th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    ${mvo.user_id}
                                                </div>
                                            </td>
                                            <td>${mvo.user_name}</td>
                                            <td>${mvo.user_childname}</td>
                                            <td>${mvo.user_childbdate}</td>
                                            <td>${mvo.user_relation}</span></td>
                                            <td>${mvo.user_address}</td>
                                            <td>${mvo.user_joindate}</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    진짱
                                                </div>
                                            </td>
                                            <td>양진용</td>
                                            <td>홍길순</td>
                                            <td>2012-06-09</td>
                                            <td>부</span></td>
                                            <td>광주</td>
                                            <td>23-06-09</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    진짱맨
                                                </div>
                                            </td>
                                            <td>양진용</td>
                                            <td>홍길순</td>
                                            <td>2012-06-09</td>
                                            <td>부</td>
                                            <td>광주</td>
                                            <td>23-06-09</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    1
                                                </div>
                                            </td>
                                            <td>하</td>
                                            <td>아</td>
                                            <td>2012-06-09</td>
                                            <td>부</span></td>
                                            <td>광주</td>
                                            <td>23-06-09</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    qwer
                                                </div>
                                            </td>
                                            <td>양진영</td>
                                            <td>홍길동</td>
                                            <td>2004-06-08</td>
                                            <td>부</span></td>
                                            <td>광주</td>
                                            <td>23-06-12</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    jyj
                                                </div>
                                            </td>
                                            <td>asdf</td>
                                            <td>홍길동</td>
                                            <td>2023-05-26</td>
                                            <td>부</span></td>
                                            <td>광주</td>
                                            <td>23-05-26</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    test
                                                </div>
                                            </td>
                                            <td>test</td>
                                            <td>test</td>
                                            <td>2023-05-26</td>
                                            <td>부</span></td>
                                            <td>광주</td>
                                            <td>23-05-26</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/datatables-simple-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/litepicker.js"></script>
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
