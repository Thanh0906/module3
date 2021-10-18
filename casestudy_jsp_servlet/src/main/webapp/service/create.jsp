<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/15/2021
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
<div class="row">
    <div class="col-8">
        <h1>Service Management</h1>
    </div>
</div>
<h4>
    <a href="/service">Back to list all services</a>
</h4>
<h4>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</h4>
<div align="center"></div>
<form action="/employee?action=create" method="post"></from>
    <table border="1" cellpadding="5">
        <tr>
            <th> Name:</th>
            <td>
                <input type="text" name="name"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>Area</th>
            <td>
                <input type="text" name="area"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>cost:</th>
            <td>
                <input type="text" name="cost"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>Max People:</th>
            <td>
                <input type="text" name="service_max_people"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>Rent Type:</th>
            <td>
            <select class="form-select" aria-label="Default select example" name="rent_type">
                <option selected>Chọn kiểu thuê</option>
                <option value="1">Năm</option>
                <option value="2">Tháng</option>
                <option value="3">Ngày</option>
                <option value="4">Giờ</option>
            </select>
            </td>
        </tr>
        <tr>
            <th>Service Type:</th>
            <td>
                <select class="form-select" aria-label="Default select example" name="service_type">
                    <option selected>Chọn loại dịch vụ</option>
                    <option value="1">Villa</option>
                    <option value="2">House</option>
                    <option value="3">Room</option>
                </select>
            </td>
        </tr>
        <tr>
            <th> Standard Room:</th>
            <td>
                <input type="text" name=" standard_room"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>description_other_convenience:</th>
            <td><input type="text" name="description_other_convenience"  size="45"/></td>
        </tr>
        <tr>
            <th>Pool Area:</th>
            <td>
                <input type="text" name="pool_area"  size="45"/>
            </td>
        </tr>
        <tr>
            <th>Number Floor:</th>
            <td>
                <input type="text" name="number_of_floors"  size="45"/>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <input  type="submit" name="action" value="Create"/>
            </td>
        </tr>
    </table>
</form>

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