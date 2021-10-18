<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/16/2021
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Contract</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
<center>
    <h1 class="text-danger">Create Contract</h1>
</center>
<h2 style="text-align: center">
    <a href="/contract"></i> Back to Contract Page</a>
</h2>
<h2 style="text-align: center">
    <a href="/"> Back to Home</a>
</h2>
<p class="text-center">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message  text-success">${requestScope["message"]}</span>
    </c:if>
</p>
<div align="center">
    <form action="/contract?action=create" method="post">

        <table border="1" cellpadding="5">
            <tr>
                <th>start_date:</th>
                <td>
                    <input type="text" name="start_date" id="start_date" size="45"/>
                </td>
            </tr>
            <tr>
                <th>end_date:</th>
                <td>
                    <input type="date" name="end_date" id="end_date" size="45"/>
                </td>
            </tr>
            <tr>
                <th>deposit:</th>
                <td>
                    <input type="text" name="deposit"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>total_money:</th>
                <td>
                    <input type="text" name="total_money" id="total_money" size="45"/>
                </td>
            </tr>
            <tr>
                <th>employee_id:</th>
                <td>
                    <input type="text" name="employee_id" id="employee_id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>customer_id:</th>
                <td>
                    <input type="text" name="customer_id" id="customer_id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>service_id:</th>
                <td>
                    <input type="text" name="service_id" id="service_id" size="45"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="action" value="Create"/>
                </td>
            </tr>


        </table>

    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
        integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
        crossorigin="anonymous"></script>

</body>
</html>