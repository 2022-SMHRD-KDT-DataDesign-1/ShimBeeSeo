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
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">회원가입</h1>
                <nav aria-label="breadcrumb animated slideInDown">
  
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Get In Touch</h1>
                    <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit
                        eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
                </div>

                <div class="bg-light rounded">
                    <div class="row g-0">
                                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                               <img src="${contextPath}/resources/images/logo.png" class="position-relative rounded"
                                frameborder="0" style="height:90%; width:90%; margin-left:5%;margin-top:5%;" >
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="#">회원가입</a>.</p>
                                <form action="${contextPath}/join.do" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_id" id="user_Id">
                                                <label for="user_Id">아이디</label>
                                            </div>
                                        </div>
                                         <div class="col-6">
                                            <div class="form-floating">
                                                <input type="password" class="form-control border-0" name="user_pw" id="pw1">
                                                <label for="pw1">비밀번호</label>
                                            </div>
                                            </div>
                                            <div class="col-6">
                                            <div class="form-floating">
                                                <input type="password" class="form-control border-0" id="pw2">
                                                <label for="pw2">비밀번호 확인</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_name" id="user_Name">
                                                <label for="user_Name">이름</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="date" class="form-control border-0" name="user_bdate" id="user_Bdate">
                                                <label for="user_Bdate">생년월일</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_childname" id="user_Childname">
                                                <label for="user_Childname">자녀이름</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="date" class="form-control border-0" name="user_childbdate" id="user_Childbdate">
                                                <label for="user_Childbdate">자녀 생년월일</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_relation" id="user_Relation">
                                                <label for="user_Relation">자녀와의 관계</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_address" id="user_Address">
                                                <label for="user_Address">주소</label>
                                            </div>
                                        </div>
                                        
                                         <div class="col-12">
                                           <div id="pnlNames" style="margin-left: 28vw;">
                                           <p>개인정보 제공 동의</p>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" value="Y" name="user_isagreed" id="namesYes" />
                    <label class="form-check-label" for="namesYes">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" value="N" name="user_isagreed" id="namesNo" />
                    <label class="form-check-label" for="namesNo">No</label>
                </div>
            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100 py-3" type="submit">회원가입</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->

	<jsp:include page="../common/footer.jsp"></jsp:include>

    </div>
    
          <!-- Modal content-->
      <div id="messageType" class="modal-content panel-info"> <!-- panel-info >> 하늘색 -->
        <div class="modal-header panel-heading"> <!-- 메세지 굵게 처리 -->
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">${msgType}</h4>
        </div>
        <div class="modal-body">
          <p id="">${msg}</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
 <!-- JavaScript Libraries -->
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