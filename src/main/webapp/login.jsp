<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String error = "";

if(request.getParameter("username") != null){

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username.equals("admin") && password.equals("1234")){
        response.sendRedirect("home.jsp");
        return;
    }else{
        error = "Invalid Username or Password!";
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Sharing Application</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:350px;
    margin:100px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    text-align:center;
    box-shadow:0px 0px 10px gray;
}

input{
    width:90%;
    padding:10px;
    margin:10px;
}

button{
    padding:10px 20px;
    background:#007bff;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#0056b3;
}

.error{
    color:red;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

<h2>File sharing application</h2>

<p class="error"><%= error %></p>

<form method="post">

<input type="text" name="username" placeholder="Username" required>

<input type="password" name="password" placeholder="Password" required>

<button type="submit">Login</button>

</form>

</div>

</body>
</html>