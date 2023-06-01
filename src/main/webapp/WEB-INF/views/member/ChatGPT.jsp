<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
	<!-- HTML form -->
<form action="${contextPath}/chat" method="post" id="chatForm">
    <input type="text" id="userMessage" placeholder="Type your message">
    <button type="submit">Send</button>
</form>

<!-- JavaScript code -->
<script>
    document.getElementById("chatForm").addEventListener("submit", function(event) {
        event.preventDefault();
        var userMessage = document.getElementById("userMessage").value;
        sendMessage(userMessage);
    });

    function sendMessage(message) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "${contextPath}/chat", true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                displayResponse(response.choices[0].message.content);
            } else {
            	document.write("오류");
            }
        };
        xhr.send(JSON.stringify(message));
    }

    function displayResponse(response) {
    	var displayArea = document.getElementById("responseDisplay");
        var responseElement = document.createElement("p");
        responseElement.textContent = response;
        displayArea.appendChild(responseElement);
    }
</script>
</body>
</html>