<%@ page import="Models.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<jsp:include page="blocks/header.jsp"/>

<div class="row">
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        for (int i = 0; i < products.size(); i++){%>
    <div class="col-md-7">
        <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="<%=products.get(i).getImage()%>" alt="">
        </a>
    </div>
    <div class="col-md-5">
        <h3><%=products.get(i).getName()%></h3>
        <p><%=products.get(i).getDescription()%></p>
        <p><%=products.get(i).getPrice()%></p>
        <a class="btn btn-primary" href="#">Add</a>
    </div>
    <%}%>
    <hr>
</div>
<jsp:include page="blocks/footer.jsp"/>
</body>
</html>