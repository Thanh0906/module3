<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/14/2021
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1 class="text-primary">Edit Customer</h1>
</center>
<h2>
    <a href="/customer"><i class="fas fa-arrow-left"></i> Back to Customer Page</a>
</h2>
<h2>
    <a href="/"><i class="fas fa-arrow-left"></i> Back to Home</a>
</h2>
<h1 class="text-center">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message  text-success">${requestScope["message"]}</span>
    </c:if>
</h1>
<c:if test='${requestScope["message"] == null}'>
    <span class="message  text-success">${requestScope["message"]}</span>
    <div align="center">

        <form method="post">
            <table border="1" cellpadding="5">
                <c:if test="${customer != null}">
                    <input type="hidden" name="id" value="<c:out value='${customer.id}' />"/>
                </c:if>
                <tr>
                    <th>Customer Name:</th>
                    <td>
                        <input type="text" name="name" size="45"
                               value="${customer.name}"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Customer Birthday:</th>
                    <td>
                        <input type="date" name="birthday" size="45"
                               value="<c:out value='${customer.birthday}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Customer Gender:</th>
                    <td>
                        <input type="radio" name="gender" value="0" size="15"/>Female
                        <input type="radio" name="gender" value="1" size="15"/>Male
                        <input type="radio" name="gender" value="2" size="15"/>LGBT
                    </td>
                </tr>
                <tr>
                    <th>CCCD:</th>
                    <td>
                        <input type="text" name="idCard" id="idCard" size="45"
                               value="<c:out value='${customer.idCard}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Số điện thoai:</th>
                    <td>
                        <input type="text" name="phone" id="phone" size="45"
                               value="<c:out value='${customer.phone}' />"/>
                    </td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>
                        <input type="text" name="email" id="email" size="45" value="<c:out value='${customer.email}' />"/>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ:</th>
                    <td>
                        <input type="text" name="address" id="address" size="45"
                               value="<c:out value='${customer.address}' />"/>
                    </td>
                </tr>
                <tr>
                    <th>Loại Khách hàng:</th>
                    <td>
                        <input type="radio" name="customer_type_id" value="1" size="15"/>Diamond
                        <input type="radio" name="customer_type_id" value="2" size="15"/>Platinium
                        <input type="radio" name="customer_type_id" value="3" size="15"/>Gold
                        <input type="radio" name="customer_type_id" value="4" size="15"/>Silver
                        <input type="radio" name="customer_type_id" value="5" size="15"/>Member
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input class="bg-primary" type="submit" value="Save"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</c:if>
</body>
</html>
