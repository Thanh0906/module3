<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/17/2021
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Contract Detail</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
<h1 class="row " style="text-align: center;color: blue ">Contract detail Management</h1>
<h4>
    <a href="/contract-detail">Back to list all contract detail</a>
</h4>
<h4>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</h4>
<div align="center">
    <form action="/contract-detail?action=create" method="post">

        private int quantity;
        <table border="1" cellpadding="5">
            <tr>
                <th>contractId:</th>
                <td>
                    <input type="text" name="contract_id" id="contract_id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>attachServiceId:</th>
                <td>
                    <input type="date" name="attachService_id" id="attachService_id" size="45"/>
                </td>
            </tr>

            <tr>
                <th>quantity:</th>
                <td>
                    <input type="text" name="quantity" id="quantity" size="45"/>
                </td>
            </tr>
        </table>

    </form>
</div>
</div>
</body>
</html>
