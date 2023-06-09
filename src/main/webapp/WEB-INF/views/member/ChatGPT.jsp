<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ChatGPT Demo</title>
    <style>
        #chat-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
        }

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

        #message-display {
            height: 300px;
            overflow-y: scroll;
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }

        #message-input {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
        }

        #send-button {
            padding: 5px 10px;
        }
    </style>
</head>
<body>
<div id="chat-container">
    <div id="message-display"></div>
    <input type="text" id="message-input" placeholder="Enter your message">
    <button id="send-button">Send</button>
</div>

<script>
    const messageDisplay = document.getElementById('message-display');
    const messageInput = document.getElementById('message-input');
    const sendButton = document.getElementById('send-button');

    sendButton.addEventListener('click', sendMessage);

    function sendMessage() {
        const userMessage = messageInput.value;
        if (userMessage.trim() !== '') {
            displayMessage('User', userMessage);
            messageInput.value = '';

            // Send the message to the backend
            const xhr = new XMLHttpRequest();
            xhr.open('GET', '${contextPath}/chat', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            console.log("여기야여기");
            console.log(xhr.responseText);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    const response = JSON.parse(xhr.responseText);
                    const agentMessage = response.choices[0].message.content;
                    displayMessage('Agent', agentMessage);
                } else{
                	console.log(xhr.responseText);
                }
            };
            const requestBody = JSON.stringify(userMessage);
            xhr.send(requestBody);
        }
    }

    function displayMessage(sender, content) {
        const messageElement = document.createElement('div');
        messageElement.innerHTML = `<strong>${sender}: </strong>${content}`;
        messageDisplay.appendChild(messageElement);
        messageDisplay.scrollTop = messageDisplay.scrollHeight;
    }
</script>
</body>
</html>