<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/9/2021
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Information Product</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<h1>Product details</h1>
<p>
    <a href="/">Back to product list</a>
</p>
<table>
    <tr>
        <td>Id:</td>
        <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price:</td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Description:</td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>

    <tr>
        <td>Producer:</td>
        <td>${requestScope["product"].getProducer()}</td>
    </tr>
</table>

</body>
</html>