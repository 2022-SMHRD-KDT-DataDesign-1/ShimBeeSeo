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
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		
		$(document).ready(function() {
			if(${not empty msgType}){
				if(${msgType eq "실패 메세지"}){
					$("#messageType").attr("class", "modal-content panel-warning");
				} else if(${msgType eq "회원수정 실패"}){
					$("#messageType").attr("class", "modal-content panel-warning");
				}
				$("#myMessage").modal("show");
			}
		})
	
		function passwordCheck(){
			// 비밀번호 일치 확인 기능
			var memPassword1 = $("#memPassword1").val();
			var memPassword2 = $("#memPassword2").val();
			
			if(memPassword1 != memPassword2){
				$("#passMessage").html("비밀번호가 서로 일치하지 않습니다.");
			} else{
				$("#passMessage").html("");
				$("#memPassword").val(memPassword1);
			}
		}
	
	</script>
</head>
<body>
 
	<div class="container">
	<jsp:include page="../common/header.jsp"></jsp:include>
	  	<h2>Spring MVC03</h2>
	  	<div class="panel panel-default">
	    	<div class="panel-heading">회원정보수정</div>
	    	<div class="panel-body">
	    		<form action="${contextPath}/update.do" method="post">
	    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	    		<input type="hidden" id="memPassword" name="memPassword" value="">
				<table class="table table-bordered" style="text-align: center; border : 1px solid #dddddd">
					<tr>
						<td style="width: 110px; vertical-align: middle;">아이디</td>
						<td>
							<span class="form-control" style="text-align: left;">${mvo.memID}</span>
							<input type="hidden" name="memID" id="memID" class="form-control" value="${mvo.memID}" maxlength="20">
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">비밀번호</td>
						<td>
							<input onkeyup="passwordCheck()" type="password" name="memPassword1" id="memPassword1" class="form-control" placeholder="비밀번호를 입력하세요." maxlength="20">
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">비밀번호 확인</td>
						<td>
							<input onkeyup="passwordCheck()" type="password" name="memPassword2" id="memPassword2" class="form-control" placeholder="비밀번호를 입력하세요." maxlength="20">
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">사용자 이름</td>
						<td>
							<input value="${mvo.memName}" type="text" name="memName" id="memName" class="form-control" placeholder="이름을 입력하세요." maxlength="20">
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">나이</td>
						<td>
							<input value="${mvo.memAge}" type="number" name="memAge" id="memAge" class="form-control" placeholder="나이를 입력하세요." maxlength="20">
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">성별</td>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									
									<c:if test="${mvo.memGender eq '남자'}">
										<label class="btn btn-success active">
											<input type="radio" id="memGender" name="memGender" autocomplete="off" value="남자" checked="checked">남자
										</label>
										<label class="btn btn-success">
											<input type="radio" id="memGender" name="memGender" autocomplete="off" value="여자">여자
										</label>
									</c:if>
									<c:if test="${mvo.memGender eq '여자'}">
										<label class="btn btn-success">
											<input type="radio" id="memGender" name="memGender" autocomplete="off" value="남자">남자
										</label>
										<label class="btn btn-success active">
											<input type="radio" id="memGender" name="memGender" autocomplete="off" value="여자" checked="checked">여자
										</label>
									</c:if>
								</div>
							</div>
							
						
						</td>
					</tr>
					<tr>
						<td style="width: 110px; vertical-align: middle;">이메일</td>
						<td>
							<input value="${mvo.memEmail}" type="email" name="memEmail" id="memEmail" class="form-control" placeholder="이메일을 입력하세요." maxlength="50">
						</td>
					</tr>
					
					<tr>
						<td style="width: 110px; vertical-align: middle;">사용자 권한</td>
						<td colspan="2">
							<input type="checkbox" name="authList[0].auth" value="ROLE_USER"
		                     <c:forEach var="auth" items="${mvo.authList}">
		                        <c:if test="${auth.auth eq 'ROLE_USER'}">
		                           checked
		                        </c:if>
		                     </c:forEach>
		                  /> ROLE_USER
		                  
		                  <input type="checkbox" name="authList[1].auth" value="ROLE_MANAGER"
		                     <c:forEach var="auth" items="${mvo.authList}">
		                        <c:if test="${auth.auth eq 'ROLE_MANAGER'}">
		                           checked
		                        </c:if>
		                     </c:forEach>
		                  /> ROLE_MANAGER
		                  
		                  <input type="checkbox" name="authList[2].auth" value="ROLE_ADMIN"
		                     <c:forEach var="auth" items="${mvo.authList}">
		                        <c:if test="${auth.auth eq 'ROLE_ADMIN'}">
		                           checked
		                        </c:if>
		                     </c:forEach>
		                  /> ROLE_ADMIN
						</td>
					</tr>
					
					<tr>
						<td colspan="2" style="text-align: left;">
							<span id="passMessage" style="color: red;"></span>
							<input type="submit" class="btn btn-primary btn-sm pull-right" value="회원정보수정">
							<input type="reset" class="btn btn-warning btn-sm pull-right" value="취소">
						</td>
					</tr>
					
					
				</table>
				</form>
			</div>
	    	<div class="panel-footer">스프링게시판-ㅂㅎㅇ</div>
	  	</div>
	</div>
	
	<!-- Modal -->
	<!-- 회원가입 실패시 나올 모달창 -->
  <div class="modal fade" id="myMessage" role="dialog">
    <div class="modal-dialog">
    
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
	
	<!-- 다이얼로그창(모달) -->
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div id="checkType" class="modal-content panel-info"> <!-- panel-info >> 하늘색 -->
        <div class="modal-header panel-heading"> <!-- 메세지 굵게 처리 -->
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">메세지 확인</h4>
        </div>
        <div class="modal-body">
          <p id="checkMessage"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</body>
</html>
