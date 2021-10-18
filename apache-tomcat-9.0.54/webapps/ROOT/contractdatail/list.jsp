<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/17/2021
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contract Detail Management</title>
</head>
<body>
<h1 style="color: blue">Service Management</h1>
<h4>
    <a href="/contract-detail/create.jsp">Create Contract Detail</a>
</h4>
<h4>
    <a href="/">Back home</a>
</h4>


<table class="table ">
    <thead>
    <tr>
        <th>Id</th>
        <th>ContractId</th>
        <th>attachServiceId</th>
        <th>quantity</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope['contractDetailList']}" var="contracDetail">
        <tr>
            <td>${contracDetail.id}</td>
            <td>${contracDetail.contractId}</td>
            <td>${contracDetail.attachServiceId}</td>
            <td>${contracDetail.quantity}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
