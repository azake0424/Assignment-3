<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 01.10.2020
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<header class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="mean-fruit-gradient my-0 mr-md-auto font-weight-normal">Something</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="<%=request.getContextPath()%>/main">Main</a>
        <a class="p-2 text-dark" href="<%=request.getContextPath()%>/profile">Profile</a>
    </nav>
    <a class="btn btn-outline-primary" href="<%=request.getContextPath()%>/login" >Logout</a>

</header>
