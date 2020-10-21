<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Models.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<jsp:include page="blocks/header.jsp"/>

<div class="container">
    <a href="<%=request.getContextPath()%>/sorting&sort=true">
        <button class="btn btn-primary">Sorting by price</button>
    </a>
</div>

<div class="row" style="margin-top: 50px">
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        for (int i = 0; i < products.size(); i++){
    %>
    <form action="<%=request.getContextPath()%>/basket"></form>
    <img src="<%=products.get(i).getImage()%>" width="200px" height="200px" style="margin-left: 300px" alt="">
    <div class="col-md-5">
        <h3><%=products.get(i).getName()%></h3>
        <p><%=products.get(i).getDescription()%></p>
        <p><%=products.get(i).getPrice()%></p>
        <a href="<%=request.getContextPath()%>/basket?name=<%=products.get(i).getName()%>&image=<%=products.get(i).getImage()%>&price=<%=products.get(i).getPrice()%>">
        <button class="btn btn-primary" type="submit" >Add to basket</button>
        </a>
    </div>
    <%}%>
    <hr>
</div>

<jsp:include page="blocks/footer.jsp"/>
</body>
</html>
