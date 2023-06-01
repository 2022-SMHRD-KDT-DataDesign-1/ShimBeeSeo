<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 	
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

		<!-- 상자생성하고 사진넣어보기 -->
		<section style="font-family: 'MaplestoryOTFBold';" id="projects"
			class="about-section text-center">
			<div style="margin-top: 0;" class="testView">
				<h1>
					<strong  style="font-family: 'MaplestoryOTFBold';">그림 업로드</strong>
				</h1>
				<div>
					<div style="display: block;">
						<div class="uploadPhoto">
							<div style="margin: 0 !important;">
								<form name="inputImg" method="POST">
									<div style="display: flex;" class="container">
										<div style="display: block; margin : 0 auto" class="col-md-4">
											<h3>
												<strong  style="font-family: 'NEXON Lv1 Gothic OTF'">사람</strong>
											</h3>
											<div style="margin-bottom: 1rem;" class="custom-file">
												<input previewnum="foo2" type="file"
													class="custom-file-input" id="imgInp2" name="imgInp2">
												<!-- <label class="custom-file-label" for="imgInp2">Choose
													file</label> -->
											</div>
											<<div><img class="img-bg" style="background-size: 100% 100%;" src="${contextPath}/resources/img/sk(1).png" alt="">
											<img style="width: 30rem; height: 30rem;" id="foo2" />
											</div>
											
										</div>
									</div>
									<br> <input class="btn btn-info"
										style="background-color: #FE5D37; border-color: #FE5D37; color: white"
										id="picSend" type="submit" value="다음단계로">
									<div id="resultView">
										<h3 id="resultTxt"></h3>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<jsp:include page="../common/footer.jsp"></jsp:include>
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