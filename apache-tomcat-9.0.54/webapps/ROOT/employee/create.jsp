<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/16/2021
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <title>Employee Management</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/static/bootstrap-4.3.1-dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
</head>
<body>

<center>
    <h1 class="text-danger">Create Employee</h1>
</center>
<h2 style="text-align: center">
    <a href="customer"> Back to Employee Page</a>
</h2>
<h2 style="text-align: center">
    <a href="/">Back to Home</a>
</h2>
<p class="text-center">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message  text-success">${requestScope["message"]}</span>
    </c:if>
</p>
<div align="center">
    <form action="/employee?action=create" method="post">

        <table border="1" cellpadding="5">
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Birthday:</th>
                <td>
                    <input type="date" name="birthday" id="birthday" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Customer ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Number Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45"/>
                </td>
            </tr>
            <tr>
                <th>position id:</th>

                <select class="form-select" aria-label="Default select example" name="position_id">
                    <option selected>Chọn vị trí</option>
                    <option value="1">Lễ tân</option>
                    <option value="2">Phục vụ</option>
                    <option value="3">Chuyên viên</option>
                    <option value="4">Giám sát</option>
                    <option value="5">Quản lý</option>
                    <option value="6">Giám đốc</option>
                </select>
            </tr>
            <tr>
                <th>education_degree_id:</th>
                <td><select class="form-select" aria-label="Default select example" name="education_degree_id">
                    <option selected>Chọn trình độ</option>
                    <option value="1">Trung cấp</option>
                    <option value="2">Cao đẳng</option>
                    <option value="3">Đại học</option>
                    <option value="4">Sau đại học</option>
                </select>
                </td>
            </tr>
            <tr>
                <th>division_id:</th>
               <td> <select class="form-select" aria-label="Default select example" name="division_id">
                   <option selected>Chọn bộ phận</option>
                   <option value="1">Sale - Marketing</option>
                   <option value="2">Hành chính</option>
                   <option value="3">Phục vụ</option>
                   <option value="4">Quản lý</option>
               </select></td>
            </tr>
            <tr>
                <th>UseName:</th>
                <td>
                    <input type="text" name="usename" id="usename" size="45"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input class="bg-success" type="submit" name="action" value="Create"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/static/jquery/jquery-3.5.1.min.js"></script>
<script src="/static/js/popper.min.js"></script>
<script src="/static/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>

<script src="/static/datatables/js/jquery.dataTables.min.js"></script>
<script src="/static/datatables/js/dataTables.bootstrap4.min.js"></script>

<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>



</body>
</html>
