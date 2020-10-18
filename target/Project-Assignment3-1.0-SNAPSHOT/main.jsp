<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<jsp:include page="blocks/header.jsp"/>

<div class="container">
    <form method="POST" action="servlet">
        First number:<br>
        <input type="text" name="x">
        <br>
        Second number:<br>
        <input type="text" name="y">
        <br>
        Operation:<br>
        <select name="operation">
            <option value="addition">addition</option>
            <option value="subtraction">subtraction</option>
            <option value="multiplication">multiplication</option>
            <option value="division">division</option>
        </select>
        <input type="submit" value="Submit">
    </form>
</div>
<jsp:include page="blocks/footer.jsp"/>
</body>
</html>
