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
<form method="post">
    <legend>Service information</legend>
    <div class="row mt-2">
        <div class="col-5">
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Name</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="name">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Area</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="area">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Cost</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="cost">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Max people</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="service_max_people">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Rent type</label>
                </div>
                <div class="col-8">
                    <select class="form-select" aria-label="Default select example" name="rent_type">
                        <option selected>Chọn kiểu thuê</option>
                        <option value="1">Năm</option>
                        <option value="2">Tháng</option>
                        <option value="3">Ngày</option>
                        <option value="4">Giờ</option>
                    </select>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Service type</label>
                </div>
                <div class="col-8">
                    <select class="form-select" aria-label="Default select example" name="service_type">
                        <option selected>Chọn loại dịch vụ</option>
                        <option value="1">Villa</option>
                        <option value="2">House</option>
                        <option value="3">Room</option>
                    </select>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Standard room</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="standard_room">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Description other convenience</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="description_other_convenience">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Pool area</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="pool_area">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <label class="col-form-label">Number of floors</label>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" name="number_of_floors">
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                </div>
                <div class="col-6">
                    <input type="submit" class="form-control" value="Create new service">
                </div>
                <div class="col-2">
                </div>
            </div>
        </div>
    </div>
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