<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/15/2021
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <title>Service Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css" href="../static/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="row">
    <div class="col-8">
        <h1>Service Management</h1>
    </div>
</div>
<h4>
    <a href="/service/create.jsp">Create Service</a>
</h4>
<h4>
    <a href="/">Back home</a>
</h4>


<table class="table ">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th>Max people</th>
        <th>Rent type</th>
        <th>Service type</th>
        <th>Standard room</th>
        <th>Description other convenience</th>
        <th>Pool area</th>
        <th>Number of floors</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${requestScope['serviceList']}" var="service">
        <tr>
            <td>${service.id}</td>
            <td>${service.name}</td>
            <td>${service.area}</td>
            <td>${service.cost}</td>
            <td>${service.maxPeople}</td>
            <td>
                <c:choose>
                    <c:when test="${service.rentTypeId == 1}">Năm</c:when>
                    <c:when test="${service.rentTypeId == 2}">Tháng</c:when>
                    <c:when test="${service.rentTypeId == 3}">Ngày</c:when>
                    <c:when test="${service.rentTypeId == 4}">Giờ</c:when>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${service.serviceTypeId == 1}">Villa</c:when>
                    <c:when test="${service.serviceTypeId == 2}">House</c:when>
                    <c:when test="${service.serviceTypeId == 3}">Room</c:when>
                </c:choose>
            </td>
            <td>${service.standardRoom}</td>
            <td>${service.descriptionOtherConvenience}</td>
            <td>${service.poolArea}</td>
            <td>${service.numberOfFloors}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
