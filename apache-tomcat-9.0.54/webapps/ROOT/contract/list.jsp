<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/16/2021
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Contract Management</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-8">
            <h1>Customer Management</h1>
        </div>
    </div>

    <h4>
        <a class="nav-link" href="/contract?action=create">Add Contract </a>
    </h4>

    <h4>
        <a href="/">Back home</a>
    </h4>

        <div class=col-12><h2>List of Customer</h2></div>

    <div class="row">

        <div class="col-9">
            <table class="table table-striped" id="tableCustomer">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Deposit</th>
                    <th>Total Money</th>
                    <th>Employe ID</th>
                    <th>Customer ID</th>
                    <th>Service ID</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="contract" items="${contractList}">
                    <tr>
                        <td><c:out value="${contract.contract_id}"/></td>
                        <td><c:out value="${contract.start_date}"/></td>
                        <td><c:out value="${contract.end_date}"/></td>

                        <td><c:out value="${contract.contract_deposit}"/></td>
                        <td><c:out value="${contract.total_money}"/></td>
                        <td><c:out value="${contract.employee_id}"/></td>
                        <td><c:out value="${contract.customer_id}"/></td>
                        <td><c:out value="${contract.service_id}"/></td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

<script src="/static/jquery/jquery-3.5.1.min.js"></script>
<script src="/static/js/popper.min.js"></script>
<script src="/static/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
<script src="/static/datatables/js/jquery.dataTables.min.js"></script>
<script src="/static/datatables/js/dataTables.bootstrap4.min.js"></script>

</body>
</html>

