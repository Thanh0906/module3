<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/18/2021
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <title>Contract detail Management</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="../static/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="row">
    <div class="col-8">
        <h1>Contract detail Management</h1>
    </div>
    <div class="col-4">
        <div>
            <p class="navbar-text" style="float:right">Welcome ${sessionScope.user.employeeName}</p>
        </div>
    </div>
</div>
<h4>
    <a href="/contract-detail">Back to list all contract detail</a>
</h4>
<h4>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</h4>
<form method="post">
    <legend>Contract detail information</legend>
    <div class="row mt-2">
        <div class="col-5">
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Contract id</label>
                </div>
                <div class="col-8">
                    <select class="form-select" aria-label="Default select example" name="contract_id">
                        <option selected>Chọn id hợp đồng</option>
                        <c:forEach items="${requestScope['contractList']}" var="contract">
                            <option value="${contract.id}"><c:out value="Contract No. ${contract.id}"></c:out></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Attach service</label>
                </div>
                <div class="col-8">
                    <select class="form-select" aria-label="Default select example" name="attach_service_id">
                        <option selected>Chọn id dịch vụ đính kèm</option>
                        <c:forEach items="${requestScope['attachServiceList']}" var="attachService">
                            <option value="${attachService.id}">${attachService.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Quantity</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="quantity">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                </div>
                <div class="col-6">
                    <input type="submit" class="form-control" value="Create new contract detail">
                </div>
                <div class="col-2">
                </div>
            </div>
        </div>
    </div>
</form>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="../static/bootstrap-4.3.1-dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
