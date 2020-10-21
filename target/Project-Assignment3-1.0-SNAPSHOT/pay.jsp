<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 18.10.2020
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<jsp:include page="blocks/header.jsp"/>

<div class="container">
        <h1>Your count is ${count}</h1>
    <c:set scope="request" var="greeting" value="Thank you for your purchase" />
    <c:out value="${greeting}"/>
</div>

<jsp:include page="blocks/footer.jsp"/>
</body>
</html>
