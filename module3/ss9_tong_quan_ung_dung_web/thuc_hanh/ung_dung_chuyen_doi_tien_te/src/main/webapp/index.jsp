<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2021
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <style>
    form{
      border: 3px solid red;
      display: inline-block;
      width: 200px;
      height: 200px;
    }
  </style>
</head>
<body>
<h2>Currency Converter</h2>
<form action="/convert" method="post">
  <label>Rate: </label><br/>
  <input type="text" name="rate" placeholder="RATE" value="0"/><br/>
  <label>USD: </label><br/>
  <input type="text" name="usd" placeholder="USD" value="0"/><br/>
  <input type = "submit" id = "submit" value = "Converter"/>
</form>
</body>
</html>