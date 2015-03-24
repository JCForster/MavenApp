<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<h2>A Simple Webapp</h2>

<c:url value="/login" var="somevar" />
<p>Click here to: <a href= "${somevar}">Login</a>

<c:url value="/form" var="somevar" />
<p>Click here to: <a href= "${somevar}">Sign Up</a>
</body>
</html>
