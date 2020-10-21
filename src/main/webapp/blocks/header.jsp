<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 01.10.2020
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="mean-fruit-gradient my-0 mr-md-auto font-weight-normal">Shop</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="<%=request.getContextPath()%>/products">Main</a>
        <a class="p-2 text-dark" href="basket.jsp">Basket</a>
    </nav>
    <a class="btn btn-outline-primary" href="<%=request.getContextPath()%>/logout" >Logout</a>

</header>