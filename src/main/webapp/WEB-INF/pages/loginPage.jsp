<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="loginPage" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE HTML>
<html>
<head>
    <title>Sample Form</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <style>
        body { background-color: #eee; font: helvetica; }
        #container { width: 500px; background-color: #fff; margin: 30px auto; padding: 30px; border-radius: 5px; box-shadow: 5px; }
        .green { font-weight: bold; color: green; }
        .message { margin-bottom: 10px; }
        label {width:70px; display:inline-block;}
        form {line-height: 160%; }
        .hide { display: none; }
    </style>
</head>
<body>


<div id="container">

    <h2>Login Page</h2>
    <c:if test="${not empty message}"><div class="message green">${message}</div></c:if>

    <loginPage:form modelAttribute="login" method="POST" commandName="login">
        <label for="userNameInput">Name: </label>
        <loginPage:input path="userName" id="userNameInput" />
        <br/>

        <label for="passwordInput">Password: </label>
        <loginPage:input path="password" id="passwordInput" />
        <br/>

        <input type="submit" value="Submit" />
    </loginPage:form>
</div>

</body>