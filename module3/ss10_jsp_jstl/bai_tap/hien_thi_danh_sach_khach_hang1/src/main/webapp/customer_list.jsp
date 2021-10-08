<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/8/2021
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DisPlay CustomerList</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <div class="text-center mx-auto">
                <h1>CustomerList</h1>
            </div>
            <thead>
            <tr>
                <th>Name</th>
                <th>Birthday</th>
                <th>Address</th>
                <th>Image</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${listCustomer}" var="customer">
                <tr>
                    <td><c:out value="${customer.getName()}"/></td>
                    <td><c:out value="${customer.getBirthday()}"/></td>
                    <td><c:out value="${customer.getAddress()}"/></td>
                    <td><img src="./images/${customer.getImage()}" alt="${customer.getName()}" width="110px" height="90px"/></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
