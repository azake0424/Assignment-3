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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
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
