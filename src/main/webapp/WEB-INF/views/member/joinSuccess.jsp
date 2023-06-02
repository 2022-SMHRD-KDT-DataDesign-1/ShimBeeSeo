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
  	<!-- 카카오 로그인 API 스크립트 -->
  	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
  <div class="container-xxl bg-white p-0" style="position: relative;" >

	<jsp:include page="../common/header.jsp"></jsp:include>
			<div style="position: absolute; top: 40%; left: 50%">
			<h1>회원 가입에 성공하셨습니다. 축하드립니다.</h1>
		
			<a class="btn btn-primary py-3 px-5" href="loginPage.do">로그인 페이지로 이동<i class="fa fa-arrow-right ms-2"></i></a>
			</div>
	    <!-- Page Header End -->
        <!-- <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">로그인</h1>
                <nav aria-label="breadcrumb animated slideInDown">
  
                </nav>
            </div>
        </div> -->
        <!-- Page Header End -->


        <!-- Contact Start -->
        <%-- <div class="container-xxl py-5">
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
                                <p class="mb-4">회원아니면 가입하셈 <a href="joinPage.do">회원가입</a></p>
                                <form action="${contextPath}/login.do" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control border-0" name="user_id" id="subject" placeholder="아이디를 입력해주세요">
                                                <label for="subject">ID</label>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-floating">
                                                <input type="password" class="form-control border-0" name="user_pw" id="" placeholder="비밀번호를 입력해주세요">
                                                <label for="subject">PASSWORD</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
   											<div style="width:"100px" height:"40px"><a id="kakao-login-btn" ></a></div>
                                            <button class="btn btn-primary w-100 py-3" type="submit" style="margin: 5% 0;">회원가입</button>
                                            <button class="btn btn-primary w-100 py-3" type="submit" style="margin: 5px 0;">로그인</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Contact End -->

	<%-- <jsp:include page="../common/footer.jsp"></jsp:include>

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
      
    </div> --%>
  </div>
 <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/lib/wow/wow.min.js"></script>
    <script src="${contextPath}/resources/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>


<!-- 카카오 로그인 API 시작-->

<!-- <script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('d394e2fa88e8e559fa9dda45fb5d339c');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
    </script> -->
<!-- 카카오 로그인 API 끝 -->


    <!-- Template Javascript -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>
