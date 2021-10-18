<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/15/2021
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <title>Customer Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="/static/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <style>
        h4{
            text-align: center;
            color: blue;
        }
    </style>
</head>
<body>

<div class="row">
    <div class="col-8">
        <h1>Customer Management</h1>
    </div>
</div>
<h4>
    <a href="/customer?action=create">Create Customer</a>
</h4>
<h4>
    <a href="/customer?action=search">Search Customer</a>
</h4>

<h4>
    <a href="/">Back home</a>
</h4>

<table class="table table-striped" id="tableCustomer" >
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Birthday</th>
        <th>Gender</th>
        <th>IdCard</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Address</th>
        <th>Customer type</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${requestScope['customerList']}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>
                <c:choose>
                    <c:when test="${customer.gender == 1}">Nam</c:when>
                    <c:when test="${customer.gender == 2}">Nữ</c:when>
                    <c:otherwise>LGBT</c:otherwise>
                </c:choose>
            </td>
            <td>${customer.idCard}</td>
            <td>${customer.phone}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td>
                <c:choose>
                    <c:when test="${customer.customerTypeId == 1}">Diamond</c:when>
                    <c:when test="${customer.customerTypeId == 2}">Platinium</c:when>
                    <c:when test="${customer.customerTypeId == 3}">Gold</c:when>
                    <c:when test="${customer.customerTypeId == 4}">Silver</c:when>
                    <c:when test="${customer.customerTypeId == 5}">Member</c:when>
                </c:choose>
            </td>
            <td>
                <a href="/customer?action=edit&id=${customer.id}">Edit</a>
            </td>
            <td>
                <button onclick="onDelete(${customer.id})" type="button" class="btn btn-danger" data-toggle="modal"
                        data-target="#modelId">Delete
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/customer">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="id" value="" id="idCustomerDell">
                <div class="modal-body">
                    Ban co muon xoa ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/static/jquery/jquery-3.5.1.min.js"></script>
<script src="/static/js/popper.min.js"></script>
<script src="/static/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
<script src="/static/datatables/js/jquery.dataTables.min.js"></script>
<script src="/static/datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    function onDelete(idCustomer) {
        document.getElementById("idCustomerDel").value = idCustomer;
    }

    $(document).ready(function () {
        $("#tableCustomer").DataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        })
    })
</script>
</body>
</html>
