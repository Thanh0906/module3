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
    <title>Create Customer</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
<center>
    <h1 class="text-danger">Create Service</h1>
</center>
<h2>
    <a href="service"><i class="fas fa-arrow-left"></i> Back to Service Page</a>
</h2>
<h2>
    <a href="/"><i class="fas fa-arrow-left"></i> Back to Home</a>
</h2>
<p class="text-center">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message  text-success">${requestScope["message"]}</span>
    </c:if>
</p>
<div align="center">
    <form action="/service?action=create" method="post">

        <table border="1" cellpadding="5">
            <tr>
                <th>Service Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Area:</th>
                <td>
                    <input type="text" name="area" id="area" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Cost</th>
                <td>
                    <input type="text" name="cost" value="0" size="15"/>Female

                </td>
            </tr>
            <tr>
                <th>maxPeople:</th>
                <td>
                    <input type="text" name="max_people" id="max_people" size="45"/>
                </td>
            </tr>
            <tr>
                <th>rentTypeId:</th>
                <td>
                    <input type="text" name="rent_type_id" id="rent_type_id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>serviceTypeId:</th>
                <td>
                    <input type="text" name="service_type_id" id="service_type_id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>standardRoom</th>
                <td>
                    <input type="text" name="standard_room" id="standard_room" size="45"/>
                </td>
            </tr>
            <tr>
                <th>descriptionOtherConvenience:</th>
                <td>
                    <input type="text" name="description_other_convenience" size="15"/>
                </td>
            </tr>
            <tr>
                <th>poolArea</th>
                <td>
                    <input type="text" name="pool_area" id="pool_area" size="45"/>
                </td>
            </tr>
            <tr>
                <th>numberOfFloors</th>
                <td>
                    <input type="text" name="number_of_floors" id="number_of_floors" size="45"/>
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