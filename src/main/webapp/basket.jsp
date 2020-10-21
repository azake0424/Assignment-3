<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 18.10.2020
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<jsp:include page="blocks/header.jsp"/>
<div class="row" style="margin-top: 50px">
    <% BasketCart basket = (BasketCart) session.getAttribute("basket");
        if (basket != null){
    %>

   <form action="<%=request.getContextPath()%>/basket"></form>
   <img src="<%=basket.getImage()%>" width="200px" height="200px" style="margin-left: 300px" alt="">
   <div class="col-md-5">
       <h3><%=basket.getName()%></h3>
       <p>Price:<%=basket.getPrice()%></p>
       <a href="<%=request.getContextPath()%>/delete?name=<%=basket.getName()%>">
           <button class="btn btn-primary" type="submit" >Delete</button>
       </a>
       <a href="<%=request.getContextPath()%>/pay">
           <button class="btn btn-primary" type="submit" >Buy</button>
       </a>
   </div>
    <%} else {%>
<div class="container">
    <h1>Basket is empty</h1>
</div>
    <%}%>
</div>
<jsp:include page="blocks/footer.jsp"/>
</body>
</html>
