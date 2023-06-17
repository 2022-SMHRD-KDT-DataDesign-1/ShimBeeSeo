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
    </head>
    <body class="nav-fixed">
        <nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-white" id="sidenavAccordion">
            <!-- Sidenav Toggle Button-->
            <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
            <!-- Navbar Brand-->
            <!-- * * Tip * * You can use text or an image for your navbar brand.-->
            <!-- * * * * * * When using an image, we recommend the SVG format.-->
            <!-- * * * * * * Dimensions: Maximum height: 32px, maximum width: 240px-->
            <a class="navbar-brand pe-3 ps-4 ps-lg-2" href="admin.do">심비서</a>
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
                            <a class="nav-link" href="admin.do">Dashboards</a>
                            <a class="nav-link" href="adminMember.do">Users List</a>
                            <a class="nav-link" href="#">Users Data</a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            유저 분석데이터
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>자녀의 나이</th>
                                            <th>검사유형</th>
                                            <th>검사결과</th>
                                            <th>검사일</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>아이디</th>
                                            <th>자녀의 나이</th>
                                            <th>검사유형</th>
                                            <th>검사결과</th>
                                            <th>검사일</th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    진짱
                                                </div>
                                            </td>
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
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
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
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
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
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
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
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
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
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
                                            <td>홍길동</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    진영
                                                </div>
                                            </td>
                                            <td>홍길순</td>
                                            <td>집</td>
                                            <td>
                                                <span class="badge bg-red-soft text-red">50%</span>
                                                <span class="badge bg-blue-soft text-blue">40%</span>
                                                <span class="badge bg-purple-soft text-purple">50%</span>
                                                <span class="badge bg-green-soft text-green">30%</span>
                                                <span class="badge bg-yellow-soft text-yellow">20%</span>
                                                <span class="badge bg-cyan-soft text-cyan">40%</span>
                                                <span class="badge bg-pink-soft text-pink">50%</span>
                                                <span class="badge bg-peru-soft text-peru">30%</span>
                                                <span class="badge bg-salmon-soft text-salmon">20%</span>

                                            </td>
                                            <td>2023-06-12</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" href="user-management-edit-user.html"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="#!"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
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