<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 18.10.2020
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Models.BasketCart" %>
<html>
<head>
    <title>Basket</title>
</head>
<body>
<div class="container">
<jsp:include page="blocks/header.jsp"/>
    <% BasketCart basket = (BasketCart) session.getAttribute("basket"); %>
        <img src="<%=basket.getImage()%>" width="200px" height="200px" style="margin-left: 300px" alt="">
    <div class="col-md-5">
        <h3><%=basket.getName()%></h3>
    </div>
</div>
</body>
</html>
