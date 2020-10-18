<%--
  Created by IntelliJ IDEA.
  User: Zangar
  Date: 15.10.2020
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4">
    <div class="row">
        <div class="col">
            <h1>Login</h1>
            <form action="<%=request.getContextPath()%>/login" method="post">
                <input type="email" class="form-control" name="username" id="username" placeholder="Username"><br>
                <input type="password" class="form-control" name="password" id="password" placeholder="password"><br>
                <button class="btn btn-success" type="submit">Submit</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
