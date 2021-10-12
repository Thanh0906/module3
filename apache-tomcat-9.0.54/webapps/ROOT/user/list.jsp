<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/11/2021
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>

<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
    <h2>
        <a href="/users?action=search">Search user by country</a>
    </h2>
    <h2>
        <p>Sort user by name</p>
        <ul>
            <li>
                <a href="/users?action=sort&sort=ASC">Sort user by name (ASC)</a>
            </li>
            <li>
                <a href="/users?action=sort&sort=DESC">Sort user by name (DESC)</a>
            </li>
        </ul>
    </h2>
</center>

<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th colspan="2">Actions</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>