<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload File</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

.container{
    width:450px;
    margin:100px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    text-align:center;
    box-shadow:0px 0px 10px gray;
}

input[type=file]{
    margin:20px;
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

a{
    text-decoration:none;
    color:#007bff;
    display:block;
    margin-top:20px;
}

</style>

</head>

<body>

<div class="container">

<h2>Upload File</h2>

<form action="UploadServlet" method="post" enctype="multipart/form-data">

<input type="file" name="file" required>

<br><br>

<button type="submit">Upload</button>

</form>

<a href="home.jsp">⬅ Back to Home</a>

</div>

</body>
</html>